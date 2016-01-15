//
//  main.m
//  数组
//
//  Created by SpiColorPendra on 16/1/12.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    /**
     数组就是定义一串变量
     数组的索引通过   地址  =   首地址 + 数组长度 * 索引   来快速查找
     就算不给出数组的element个数  system 也会自动推断出长度的
     二维乃至多维数组就是一维数组的叠加
     
     
     */
        //系统推断数组长度为4
        int arr[] = {3,5,7,9};
        printf("%ld\n",sizeof(arr)/sizeof(arr[0]));
        printf("*********\n");
        // 二维数组也同理
        int arr2[][3] = {
            2,3,5,
            1,7,9,
            11,23,13,
            1,
        };
        printf("%ld\n",sizeof(arr2)/sizeof(int));
        printf("*********\n");
        
    
    }
    return 0;
}
