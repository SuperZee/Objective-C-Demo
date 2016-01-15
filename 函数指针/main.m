//
//  main.m
//  函数指针
//
//  Created by SpiColorPendra on 16/1/15.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
void method1(){
    printf("函数1\n");
}
void method2(){
    printf("函数2\n");
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 函数指针
        void (*fnPt)() = method1;
        NSLog(@"第一次执行fnPt");
        fnPt();
        fnPt = method2;
        NSLog(@"第二次执行fnPt");
        fnPt();
        
    }
    return 0;
}
