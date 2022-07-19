//
//  Student.h
//  homework
//
//  Created by Wang on 2022/7/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
 
@property (nonatomic,copy) NSString * name;
@property (nonatomic,copy) NSString * major;
@property (nonatomic,assign) NSUInteger age;

- (void)study: (CGFloat)time;
@end

NS_ASSUME_NONNULL_END
