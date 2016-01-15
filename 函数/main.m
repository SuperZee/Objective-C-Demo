//
//  main.m
//  函数
//
//  Created by SpiColorPendra on 16/1/12.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SwapDemo.h"
void swap(int a, int b) {
    int temp = a;
    a = b;
    b = temp;
    NSLog(@"a = %d, b = %d",a,b);
    // a = 20  b = 10
}
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        // objective-c中函数都是值传递
        //  无非是 实参 还是 形参  (地址值) (参数值)  的不同而已
        int x = 10;
        int y = 20;
        swap(x, y);
        NSLog(@"x = %d, y = %d",x,y);
        // x = 10 , y = 20
        // 交换后无变化，很好的说明了 函数的传递是值传递
        
        NSLog(@"************");
        //但是为什么下面这个函数可以交换呢?
        SwapDemo *s = [SwapDemo new];
        s.x = 15;
        s.y = 25;
        NSLog(@"a = %d, b = %d",s.x,s.y);
        swap2(s);
        //这里有一个假象，那就是通过传递到函数swap2（） ，造成s.x,s.y的值在main函数中改变了
        // 其实这里的传递是地址传递。        a    b                      b    a
        //                       main [ 15    25  ]  <----  swap2  [ 15   25   ]
        //  main函数 传递给 swap2 一个拥有a，b的对象的地址值，。swap2()指向了同一个对象  交换了同一个对象的值
    }
    return 0;
}