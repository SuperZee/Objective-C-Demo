//
//  main.m
//  函数指针变量作为函数参数
//
//  Created by SpiColorPendra on 16/1/15.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
void map(int *data , int len ,int (*fn)()){
    // 用指针遍历数组
    for (int *p = data; p < data + len; p++) {
        //调用fn函数  (fn动态传入)
        //  fn需要一个 int val 值传入  所以这里传入 *p 指向的是data  data 指向的是 arr[]
        printf("%d\t",(*fn)(*p));
    }
    printf("\n");
    
}

int noChange(int val){
    return val;
}
int square(int val){
    return val * val;
}
int cube(int val){
    return val * val * val;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int arr[] = {2,5,7,9,-4};
        
        map(arr, sizeof(arr)/sizeof(arr[0]), noChange);
        //NSLog(@"调用平方函数");
        map(arr, sizeof(arr)/sizeof(arr[0]), square);
        //NSLog(@"调用立方函数");
        map(arr, sizeof(arr)/sizeof(arr[0]), cube);
                                     
    }
    return 0;
}
