//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders

- (void)printorder
{
    NSLog(@"train:%@",_train);
    NSLog(@"from %@ to %@",_from,_to);
    NSLog(@"day:%@",_trainday);
    
}
- (instancetype)initWithTrain:(NSString *)train from:(NSString *)from to:(NSString *)to price:(NSNumber *)price trainday:(NSNumber *)trainday
{
    if(self = [super init])
    {
    self.train=train;
    self.from=from;
    self.to=to;
    self.price=price;
    self.trainday=trainday;
    
    }return self;
}
@end
@implementation Passenger
- (instancetype)init
{
    if(self = [super init]){
//        self.name = name;
//        self.address = address;
//        self.birthday = birthday;
//        self.registerDate = [NSDate date];
        self.active = [[NSMutableArray alloc]init];
        self.history = [[NSMutableArray alloc]init];
    }
    return self;
}
- (void)addorder:(Orders *)neworder
{
    Orders *temp=neworder;
    [self.active addObject:temp];
    NSLog(@"below order is added correctly");
    
    [temp printorder];
    NSLog(@"All orders:");
    for(Orders *obj in self.active)
    {
        NSLog(@"%@",obj.train);
    }
}
- (int )checkorder:(Orders *)noworder
{
    for(Orders *obj in self.active)
    {
        if(obj.train==noworder.train)
        {
            [self.active removeObject:noworder];
            [self.history addObject:noworder];
            NSLog(@"below order is checked correctly");
            [noworder printorder];
            return 1;
        }
    }
    {
        NSLog(@"there is no below order");
        [noworder printorder];
        return 0;
        
    }
}
@end
