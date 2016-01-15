//
//  main.m
//  螺旋数组打印
//
//  Created by SpiColorPendra on 16/1/12.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        // 定义螺旋数组的长宽
        int SIZE = 7;
        // 初始化数组
        int arr[SIZE][SIZE];
        // position 代表方向   0是向下，1向右，2向左,3向上
        int position = 0;

        // 数组的索引  行是j  列是k
        for (int i = 1, j = 0, k = 0; i <= SIZE * SIZE; i++) {
            arr[j][k] = i;

            // 如果位于 1号转弯点  ( 正对角线 ->  /)
            if ((j + k == SIZE - 1)) {
                // 作为左下角
                if (j > k) {
                    position = 1;
                }
                // 位于右下角
                else {
                    position = 2;
                }
            }
            // 如果位于 2号转弯点  ( 负对角线  -> \)
            else if (k == j && k >= SIZE / 2) {
                position = 3;
            }
            // 如果位于 3号转弯点   (负对角线  上偏移一个单位)
            else if ((j == k - 1) && k <= SIZE / 2 ) {
                position = 0;
            }

            switch (position) {
                case 0:
                    j++;
                    break;

                case 1:
                    k++;
                    break;

                case 2:
                    k--;
                    break;

                case 3:
                    j--;
                    break;
            }
        }

        // 遍历数组
        for (int i = 0; i < SIZE; i++) {
            for (int j = 0; j < SIZE; j++) {
                if (arr[i][j] < 10) {
                    printf("0%d ", arr[i][j]);
                } else {
                    printf("%d ", arr[i][j]);
                }
            }

            printf("\n");
        }
    }
    return 0;
}