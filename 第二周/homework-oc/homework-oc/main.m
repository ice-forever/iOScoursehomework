//
//  main.m
//  homework
//
//  Created by Wang on 2022/7/19.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu= [[Student alloc]init];
        [stu study:(1.23)];
    }
    return 0;
}
