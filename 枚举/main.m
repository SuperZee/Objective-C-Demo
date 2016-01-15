//
//  main.m
//  枚举
//
//  Created by SpiColorPendra on 16/1/9.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        //一个颜色枚举的实例
        typedef enum _LEEColor{
            ColorWhite,
            ColorBlack,
            ColorYellow
        } LEEColor;
        
        //定义了一个匿名枚举
        enum {male = 3, fmale} me, you;
        me = male;
        you = fmale;
        printf("male = %d ,fmale = %d , famle - male = %d , male * famle = %d \n", me, you, you - me
               , me * you);
        
        //枚举还可以比较
        if(fmale > male){
            printf("%s","女人大于男人?\n");
        }
    }
    return 0;
}