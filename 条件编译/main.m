//
//  main.m
//  条件编译
//
//  Created by SpiColorPendra on 16/1/12.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#define PI 3.1415
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //#ifdef #ifndef #else #endif
#ifdef PI
        NSLog(@"如果定义了宏PI 执行这条语句");
#else 
        NSLog(@"没定义宏PI 执行这条语句");
#endif
#ifndef TOW_PI
        NSLog(@"如果没有定义宏 TOW_PI 执行这条语句");
#else
        NSLog(@"如果定义了宏 TOW_PI 执行这条语句");
#endif
    }
    return 0;
}
