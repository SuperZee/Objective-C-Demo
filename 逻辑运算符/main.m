//
//  main.m
//  逻辑运算符
//
//  Created by SpiColorPendra on 16/1/10.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        int a = 0b1001;
        // 定义一个2进制数
        printf("a = %d\n", a);
        // a左移一位相当于 乘2
        a = a << 1;
        printf("a = %d\n", a);
        a = a >> 2;
        // a右移两位  相当于 除以 2的2次方
        printf("a = %d\n", a);
        char x = 0b1011;
        //  x    1011
        char y = 0b0110;
        //  y    0110
        // x & y = 0010;
        char temp = x & y;
        printf("x & y = %d\n", temp);
        // x | y = 1111
        printf("x | y = %d\n", temp = x | y);
        // ~ y =  1001
        printf("~ y = %d\n", temp = ~y);
        // x ^ y
        printf("x ^ y = %d\n", temp = x ^ y);

        // 逗号表达式
        int b = (5 * 10, 5 > 2, 4 + 3);
        printf("b = %d\n",b);
        //b = 7
        //逗号表达式仅仅只是把多个运算表达式连接起来，所以只有最后一个表达式的值会赋值给b
    }
    return 0;
}