//
//  main.m
//  基本数据类型
//
//  Created by SpiColorPendra on 16/1/9.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 8 bit
        char c_max = CHAR_MAX;
        char c_min = CHAR_MIN;
        NSLog(@"c_max = %d, c_min = %d",c_max,c_min);
        // 16 bit
        short int si_max = INT16_MAX;
        short int si_min = INT16_MIN;
        NSLog(@"s_max = %d, s_min = %d",si_max,si_min);
        // 32 bit
        int i_max = INT_MAX;
        int i_min = INT_MIN;
        NSLog(@"i_max = %d, i_min = %d",i_max,i_min);
        // 64 bit
        long l_max = LONG_MAX;
        long l_min = LONG_MIN;
        NSLog(@"l_max = %ld, l_min = %ld",l_max,l_min);
        /*
         *c_max = 127, c_min = -128
         *s_max = 32767, s_min = -32768
         *i_max = 2147483647, i_min = -2147483648
         *l_max = 9223372036854775807, l_min = -9223372036854775808
         */
        
        
        
        //正数除以一个0.0  负数除以0.0
        int _max = 5;
        _max /= 0.0;
        int _max2 = 5.0;
        _max2 /= -0.0;
        NSLog(@"_max = %d _max2 = %d",_max,_max2);
        
        
        //自动提升类型
        short sValue = 5;
        int iValue = 5;
        printf("Sizeof (short)  = %ld , Sizeof (int)  = %ld\n",sizeof(sValue),sizeof(iValue));
    }
    return 0;
}
