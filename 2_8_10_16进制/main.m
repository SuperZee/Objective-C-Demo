//
//  main.m
//  2_8_10_16进制
//
//  Created by SpiColorPendra on 16/1/9.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //定义了一个二进制数
        int b = 0b1111;
        printf("b = %d\n",b);
        //定义一个八进制数
        int s = 011;
        printf("s = %d\n",s);
        //定义一个十六进制数
        int h = 0xFF;
        printf("h = %d\n",h);
        
        //进制之间的转换
        printf("二进制 '1111' 转换成其他类型: 2到8 = %o , 2到16 = %x\n",b,b);
    
    
    
    }
    return 0;
}
