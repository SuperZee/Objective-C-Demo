//
//  main.m
//  if&else&else if的使用
//
//  Created by SpiColorPendra on 16/1/10.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        int age = 50;

        if (age > 20) {
            NSLog(@"青年人");
        } else if (age > 45) {
            NSLog(@"中年人");
        } else if (age > 60) {
            NSLog(@"老年人");
        }

        //上面的代码虽然可以正常运行，但是隐含着一个逻辑错误
        //  我们定义age = 50 是希望输出的是 中年人
        // 但是 输出的结果却是  青年人
        //  注意。 使用 if else else if结构的时候
        // 一定要把最小范围的条件放在最前面。
        //  下面是更正过的例子
        if (age > 60) {
            NSLog(@"老年人");
        } else if (age > 45) {
            NSLog(@"中年人");
        } else if (age > 20) {
            NSLog(@"青年人");
        }
        //  条件的开始 一定要冲  小范围的开的
        //   age > 60  的范围小雨   age > 20
    }
    return 0;
}