//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"
NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property (nonatomic,strong) NSString * train;
@property (nonatomic,strong) NSString * from;
@property (nonatomic,strong) NSString * to;
@property (nonatomic,strong) NSNumber * price;
@property (nonatomic, strong) NSDate *trainDate;

@end

@interface Passenger : Person
// @property 属性
@property (nonatomic,assign) BOOL childoradult;
// 是否年满 18 岁
@property (nonatomic,assign) NSMutableArray *history ;
// 历史订单 （数组）
@property (nonatomic,assign) NSMutableArray *active ;
// 未出行订单 （数组）

// Function 方法
// 去订票
- (void)addorder:(Orders *)neworder;
// 去检票
- (void)checkorder:(Orders *)noworder;
@end

NS_ASSUME_NONNULL_END
