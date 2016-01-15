//
//  main.m
//  宏定义
//
//  Created by SpiColorPendra on 16/1/12.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#define PI 3.1415
#define TOW_PI PI * 2
#define GIRTH(r) PI * 2 * r
double area(double r){
    
    return r * r * PI;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         * 什么是宏定义？
         * 简单地说  :  宏定义解决了 一些魔法数字的问题 
         *  当你想要计算圆面积的时候通常会这样选择:
         *   int area = r * r * 3.141592653;
         *   // 3.141592653 就是一个魔法数字  程序中应该避免出现过多的魔法数字
         *   #define PI 3.1415926
         *   使用时 :   int area = r * r * PI
         *    宏定义不是变量，甚至也不是常量
         *          也不是  C语句 (所以没有分号结尾
         *    宏定义的出现仅仅是用来查找和替换  找到PI  替换 PI为3.14....
         */
        double r = 3.0;
        NSLog(@"r = %lf 圆的面积 : area = %g",r,area(r));
        //  宏定义还可以嵌套  比如说
        //   #define TWO_PI PI * 2
        double tow_pi = TOW_PI;
        NSLog(@"两个 PI: TWO_PI = %g",tow_pi);
        // 带参数的宏定义
        NSLog(@"带参数的宏定义 求周长: c = %g",GIRTH(r));
        // 上面的带参 宏定义 存在一个问题  当 使用 GIRTH(r + 2) 时候 计算结果就会出错了，因为宏定义仅仅只是查找 替换而已
        // 给宏定义加上括号 可以让编译期先优先计算宏定义的参数
        //  #define GIRTH(r) (PI * (r) * 2)
    }
    return 0;
}
