//
//  main.m
//  块
//
//  Created by SpiColorPendra on 16/1/15.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^ProcessBlock)(int);
void processArray(int array[] , unsigned int len ,
                  ProcessBlock process)
{
    for (int i = 0; i <len; i++) {
        process(array[i]); //将元素作为参数调用快
    }
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 块是OC对ANSIC所做的扩展
        // 使用块可以简化语法，oc很多API都依赖于块
        //  定义格式如下
        //  ^ [块返回值类型]  (形参类型1 形参1,形参类型2 形参2,形参类型3 形参3,...)
        //  {
               //块执行体
        //  }
        // 返回值可以忽略 使用void占位
        //   如果程序需要多次访问这个块 那么需要在[块返回值类型]后面添加 (^变量名)
        
        
        // 定义不带参数。无返回值的块
        void (^printStr) (void) = ^(void)
        {
            NSLog(@"I am studying Objective-C 的块");
        };
        
        printStr();
        //带参 有返回值的块
        double (^hypot)(double , double) = ^(double num1,double num2)
        {
            return sqrt(num1 * num1 + num2 * num2);
        };
        // 调用块  并输出块的返回值
        NSLog(@"%g",hypot(3,4));
        //也可以先只定义块变量 : 定义带参数  无返回值的块
        void (^print) (NSString *);
        //再将块赋值给指定的块变量
        print = ^(NSString * info){
            NSLog(@"info 参数 = %@",info);
        };
        //调用快
        print(@"I Love iOS");
        
        //总结  块完全可以看做是一种简化的函数
        
        //块与局部变量
        // 块可以访问局部变量的值 不允许修改局部变量的值
        /*__block*/ int noChange = 10;
        void (^change)(void) = ^(void)
        {
            NSLog(@"访问局部变量 %d",noChange);
            //试图修改值 会报错 :
            //Variable is not assignable (missing __block type specifier)
            //noChange = noChange + 1;
        };
        change();
        noChange = 20;
        // 修改后 执行块 值任然是 10
        change();
        // 因为noChange = 20 这条语句位于块定义之后
        //  在块定义中  noChange 已经固定为10了 后面对noChange进行修改 值没有影响
        //  如果希望
        //  1.块不复制局部变量的值 ，而是等到执行的时候去访问
        //  2.甚至希望块可以改变局部变量的值
        //  此时可以考虑加入 _block 修饰
        
        //块可以作为参数
        // ps: 有点像 Java的匿名内部类  ???
        
        //typedef 修饰块
        //  定义格式如下
        //  typedef ^[块返回值类型]  (形参类型1 形参1,形参类型2 形参2,形参类型3 形参3,...)
        //  {
        //块执行体
        //  }
        // 用途 1.复用快变量类型
        //     2. 使用块变量类型定义函数参数  ，即可定义带块的函数参数
        typedef void (^FKPoint)(NSString *);
        // 使用FKPoint定义快变量
        FKPoint printInfo = ^(NSString *info)
        {
            NSLog(@"%@",info);
        };
        //复用
        FKPoint printName = ^(NSString *name)
        {
            NSLog(@"%@",name);
        };
        printInfo(@"iOS hello");
        printName(@"小明");

        // 指定参数类型的typedef
        /*
         typedef void (^ProcessBlock)(int);
         void processArray(int array[] , unsigned int len ,
         ProcessBlock process)
         {
              // xx
         }
         */
        int arr[] = { 3, -1 ,6};
        //整个块作为了第三个参数
        processArray(arr, 3, ^(int num)
                     {
                         NSLog(@"元素平方和 : %d",num * num);
                     });
       }
    
    return 0;
}
