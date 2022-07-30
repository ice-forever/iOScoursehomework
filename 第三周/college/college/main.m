//
//  main.m
//  college
//
//  Created by Wang on 2022/7/28.
//

#import <Foundation/Foundation.h>
#import "Passenger.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateComponents *compt =[[NSDateComponents alloc] init];
        [compt setYear:2012];
        [compt setMonth:5];
        [compt setDay:11];

        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSDate *date = [calendar dateFromComponents:compt];
        NSTimeZone *zone = [NSTimeZone systemTimeZone];
        NSInteger interval = [zone secondsFromGMTForDate:date];
        NSDate *localeDate = [date dateByAddingTimeInterval:interval];
        
        Address *address= [[Address alloc] init];
        address.country=@"china";
        address.province=@"beijing";
        address.city=@"beijing";
        
        Orders *order = [[Orders alloc]init] ;
        order=[order initWithTrain:@"K1234" from:@"beijing" to:@"shanghai" price:@100 trainday:@1];
        [order printorder];
        Passenger *zhangsan=[[[Passenger alloc]initWithName:@"zhangsan" address:address birthday:date ]init];
        
        [zhangsan addorder:order];
        
        [zhangsan checkorder:order];
        
        NSLog(@"test exit");
        
    }
    return 0;
}
