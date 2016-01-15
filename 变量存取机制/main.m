//
//  main.m
//  变量存取机制
//
//  Created by SpiColorPendra on 16/1/12.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

void fun(int n){
    auto int a = 1;
    static int b = 1;
    a += n;
    b += n;
    NSLog(@"采用auto自动存储机制 a = %d , 采用static将局部变量放到静态存储区 b = %d\n",a,b);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //动态存储 和 静态存储
        //动态存储是 程序在运行期间 根据需要动态分配内存的存储方式
        //静态存储 在程序开始就分配了固定内存 的存储方式
        
        /***
         * 静态存储区 放   全局变量   static修饰的变量
         * 动态存储区 放   函数的形参, 非static局部变量 auto修饰的变量 static 
         *                register 指定将变量存放到寄存器   extern 外部变量
         *
         *
         */
        
        //测试 auto 和 static 对变量的作用
        for (int i = 0 ; i < 4 ; i++) {
            fun(i);
        }
        //  a = 1 2 3 4
        //  b = 1 2 4 7 
    
    }
    return 0;
}
