//
//  main.m
//  返回指针的函数
//
//  Created by SpiColorPendra on 16/1/15.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
//  int *map  返回一个指向int类型的指针
#define LENGTH 5
int *map(int *data, int (*fn)())
{
    // 定义一个静态数组
    static int result[LENGTH];
    // 数组索引
    int i = 0;

    // 用指针遍历数组
    for (int *p = data; p < data + LENGTH; p++) {
        // 调用fn函数  (fn动态传入)
        //  fn需要一个 int val 值传入  所以这里传入 *p 指向的是data  data 指向的是 arr[]
        result[i++] = (*fn)(*p);
    }

    return result;  // 返回数组result的首地址
}

int noChange(int val)
{
    return val;
}

int square(int val)
{
    return val * val;
}

int cube(int val)
{
    return val * val * val;
}

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        // 函数既可以返回 整数 浮点值.. 也可以返回指针
        //  注意:函数返回的指针只保留了一个地址值，函数结束调用后，如果指针指向的是该函数的局部变量
        //  那么这个局部变量会在调用完后消失  那么将会很危险
        //  解决办法:
        //  1. 如果返回的是一个局部变量的指针 那么应该用static修饰这个局部变量
        //  2. 让函数返回的指针指向暂时不会被释放的数据,如指向main()中定义的变量,因此在main结束前
        //     那么这个指针是安全的
        //
        //  main.m
        //  函数指针变量作为函数参数
        //
        //  Created by SpiColorPendra on 16/1/15.
        //  Copyright © 2016年 SpiColorPendra. All rights reserved.
        //

        int data[] = {2, 5, 7, 9, -4};
        // 下面程序代码3次调用 map() 函数 ，每次调用传入的不同函数
        int *arr = map(data, noChange);
        for (int i = 0; i < LENGTH; i++) {
            printf("%d\t",*(arr + i));
        }
        printf("\n");
        // NSLog(@"调用平方函数");
        arr = map(data, square);
        for (int i = 0; i < LENGTH; i++) {
            printf("%d\t",*(arr + i));
        }
        printf("\n");
        // NSLog(@"调用立方函数");
        arr = map(data, cube);
        for (int i = 0; i < LENGTH; i++) {
            printf("%d\t",*(arr + i));
        }
        printf("\n");
    }
    return 0;
}