//
//  main.m
//  结构体
//
//  Created by SpiColorPendra on 16/1/15.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义了一个结构体 point
typedef struct point{
    int x;
    int y;
}LPoint;
//初始化结构体变量
struct color{
    int Red;
    int Blue;
    int Yellow;
}color = {255,125,230};
/*
 下面这个定义是错误的
typedef struct color{
 int Red;
 int White;
 int Black;
 }Color = {1,2,3};
*/
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LPoint pointer1;
        pointer1.x = 10;
        pointer1.y = 20;
        NSLog(@"(x,y) = (%d,%d)",pointer1.x
              ,pointer1.y);
        /////////////////////
        //如果不用typedef每次都需要写struct
        //struct color color;
        NSLog(@"color = %d,%d,%d",color.Red,color.Blue,color.Blue);
        
    }
    return 0;
}
