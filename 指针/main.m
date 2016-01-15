//
//  main.m
//  指针
//
//  Created by SpiColorPendra on 16/1/14.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 定义了一个指针a 指向int类型k
        int *a;
        printf("a的地址 : %p\n",&a);
        // 数组的地址
        int arr[] = {1,5,7};
        int *p = &arr[0];
        int *p1 = arr;
        printf("p = %p , p1 = %p\n",p,p1);
        // p = p1 说明上面两种取地址是相同的
        //  git bub
        //指针的运算
        //  yes master branch
        //指针可以加 或者 减一个整数
        int b = *p;
        int c = *(p + 1);
        printf("b = %d , c = %d\n",b,c);
        // b = 1 c = 5 说明   p+1  地址加1 指向了数组的下一个元素
        //    p+1  相当于  a[0] -> a[1]
        
        // 遍历一个数组
        NSLog(@"遍历数组");
        for (int i = 0; i < sizeof(arr)/sizeof(arr[0]); i++) {
            NSLog(@" %d",arr[i]);
        }
        NSLog(@"超出数组范围的情况:");
        NSLog(@" %d",*(p+3));
        NSLog(@" %d",*(p+5));
        //   -1794637354     1606416288   每次运行的结果都是未知的
        
        //二维数组
        int arr2[][3] = {
            1,4,7,
            -1,5,-3,
            2,9,-5,
        };
        
        printf("arr2 = %p     ",arr2);
        printf("     arr2[] = %p\n",*arr2);
        //  arr2 = *arr2   有趣
        //二维数组的第一个元素指向首地址
    }
    return 0;
}
