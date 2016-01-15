//
//  main.m
//  冒泡排序函数
//
//  Created by SpiColorPendra on 16/1/12.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

void bubbleSort(char c[],int len){
    //判断本轮是否排序
    //如果已经排序  则提前结束
    BOOL isSort = YES;
    // 循环排序 长度是 len
    for (int i = 0; i < len && isSort; i++) {
        // 新的一轮 设置未排序
        isSort = NO;
        for (int j = 0; j < len - 1 - i; j++) {
            //是否大于  大于就交换
            if (c[j] > c[j + 1]) {
                char temp = c[j];
                c[j] = c[j+1];
                c[j+1] = temp;
                isSort = YES;
            }
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //定义一个乱序的 char 数组
        char arrC[5] = {7,14,3,8,5};
        //获得数组的长度 len
        int len = sizeof(arrC) / sizeof(arrC[0]);
        bubbleSort(arrC, len);
        //遍历数组
        for (int i = 0; i < len; i++) {
            printf("%d,",arrC[i]);
        }
        printf("\n");
    }
    return 0;
}
