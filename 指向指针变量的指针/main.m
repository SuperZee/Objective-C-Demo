//
//  main.m
//  指向指针变量的指针
//
//  Created by SpiColorPendra on 16/1/15.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 15;
        int *p = &a;
        int **pt = &p;
        NSLog(@"指针p %p",p);
        NSLog(@"指针pt %p",pt);
        NSLog(@"指针pt的内容 %p",*pt);
        ///     p   =    *pt
        // J
        NSLog(@"指针p的内容 %d",*p);
    }
    return 0;
}
