//
//  main.m
//  递归函数
//
//  Created by SpiColorPendra on 16/1/12.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
int fun(int n){
    if(n == 0){
        return 1;
    }else if(n == 1){
        return 4;
    }else{
        return 2 * fun(n - 1) + fun(n - 2);
    }
}
int main(int argc, const char * argv[]) {
    

    
    @autoreleasepool {
        /**
         *   给定一个规律  fun(0) = 1 ,  fun(1) = 4 ,  fun(n+2) = 2 * fun(n+1) + f(n)   其中 n是 大于 0 的整数
         *   分析:
                fun(n+2) 需要调用  f(n) + f(n+1) 满足递归思想
         参数 int n
         返回值: int x
         *
         */
        NSLog(@" fun(10) = %d",fun(10));
        // 递归还可以用来找文件夹 ，
        //  因为文件夹的深度是未知的，你不知道它下面还有多少个子文件夹  子子文件夹  
        
         
         
    
    
    }
    return 0;
}
