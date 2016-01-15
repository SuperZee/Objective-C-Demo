//
//  main.m
//  objective-c-demo
//
//  Created by SpiColorPendra on 16/1/8.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

/*  Foundation 框架
 */
// 主函数入口，
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        // 自动释放池
        NSLog(@"Hello, World!");
        // NSLog 就是Foundation框架内的工具
        // NS前缀 用来区分函数  说明这个函数是来自Cocoa工具包的
        NSLog(@"Hello Git & GitHub");        // NSLog的参数是 @"....."  这是一个NSString对象

        NSString    *name = @"SpiColorPendra";
        NSString    *hello = [@"你好!" stringByAppendingString:@"objc"];

        NSLog(@"%@,name = %@", hello, name);
    }
    return 0;
}