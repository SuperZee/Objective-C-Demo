//
//  main.m
//  快速排序
//
//  Created by SpiColorPendra on 16/1/14.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 *   快速排序:
 *        一个乱序数组   4 7  18  22   3   9  7  11  2  1  6
 *        先取一个分界值                  ⬆️
 *        然后比它小的放到左边   比它大的放到右边
 *        再递归排序 左边的 右边的
 *
 *   分析:  1.选出一个临界值
 *        2.将所有比分界值小的数据放到左边
 *        3.将所有比分界值大的数据放到右边
 *
 *
 */
// 将元素 i j索引处的值交换
void swap(int *data, int i, int j)
{
    int temp;

    temp = *(data + i);
    *(data + i) = *(data + j);
    *(data + j) = temp;
}

// 对数组中 statr~end之间的序列进行处理
// 满足所有小于分界值的在左边  所有大于分界值的在右边
void subSort(int *data, int start, int end)
{

    //需要排序
    if (start < end) {
        // 以第一个元素作为分界值
        int base = *(data + start);
        int i = start;      // 从左边开始
        int j = end + 1;    // 从右边开始

        while (true) {
            // 找到大于分界值的元素的索引  或者i已经到了end处
            while (i < end && data[++i] <= base) {}

            while (j > start && data[--j] >= base) {}

            if (i < j) {
                swap(data, i, j);
            } else {
                break;
            }
        }
        swap(data, start, j);
        subSort(data, start, j - 1);   // 递归左边子序列
        subSort(data, j + 1, end);     // 递归右边子序列
    }
}

void quickSort(int *data, int len)
{
    subSort(data, 0, len - 1);
}

// 打印
void printArray(int *array, int len)
{
    for (int *p = array; p < array + len; p++) {
        printf("%d ", *p);
    }

    printf("\n");
}

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        // 初始化数组
        int data[] = {4, 7, -1, 10, 41, -4, 22, 66, -8, 25, 17, -14};
        int len = sizeof(data) / sizeof(data[0]);
        NSLog(@"排序前");
        printArray(data, len);
        quickSort(data, len);
        NSLog(@"排序后");
        printArray(data, len);
    }
    return 0;
}