//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders

@end

@implementation Passenger

- (void)addorder:(Orders *)neworder
{
    [_active addObject:neworder];
}
- (void )checkorder:(Orders *)noworder
{
    [_active removeObject:noworder];
    [_history addObject:noworder];
}
@end
