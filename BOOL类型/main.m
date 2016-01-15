//
//  main.m
//  BOOL类型
//
//  Created by SpiColorPendra on 16/1/9.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //来定义两个BOOL
        bool y = YES;
        bool n = NO;
        printf("YES = %d , NO = %d\n",y,n);
        //可见 YES = 1 NO = 0
        
        //布尔类型的本质究竟是什么呢??
        /********************************************************************************
         
         Boolean types and values
         
         Boolean         Mac OS historic type, sizeof(Boolean)==1
         bool            Defined in stdbool.h, ISO C/C++ standard type
         false           Now defined in stdbool.h
         true            Now defined in stdbool.h
         
         *********************************************************************************/
        typedef unsigned char  Boolean;
        //可见Bool类型是一个 无符号字符类型 占用一个字节
        //如果溢出会发生什么呢？
        Boolean b = 257;
        printf("溢出的Boolean = %u\n",b);
        //  b = 256  内存中是0   ????
        //如果boolean溢出，那么就不能来代表YES 或者 NO了。
        //官方定义YES和NO的意愿估计就是让我 不要随便让Boolean溢出。不然出Bug找死你！
        
        
    }
    return 0;
}
