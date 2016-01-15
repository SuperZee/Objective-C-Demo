//
//  main.m
//  字符串
//
//  Created by SpiColorPendra on 16/1/15.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
// copy str
void copyStr(char *to ,char *from){
    while (*from) {
        *to++ = *from++;
    }
    *to = '\0';
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //字符串与指针
        char *str = "I Love iOS";
        printf("str 0 = %s\n",str);
        //  str 0 = I Love iOS
        str+= 2;
        printf("str 2 = %s\n",str);
        //  str 2 = Love iOS
        //  底层保存的是  I LOVE iOS\0
        
        // 测试copyStr函数
        char *str2 = "www.google.com";
        char dest[100];
        //将str2 复制到 dest[100]中
        copyStr(dest,str2);
        NSLog(@"dest = %s",dest);
        copyStr(dest,"www.apple.cn");
        NSLog(@"dest = %s",dest);
        //注意 大多数字符串和字符数组是可以等价的
        //但是    1.字符数组底层真正存放了所有字符，每个字符对应一个数组元素，而字符指针指向字符数组时只存放了首地址
        //       2.字符数组只能在定义是赋值
        //       例如:   char[] 100 str;    str = "www.??aa.com"   这两句就是错误的 //数组变量不能重复赋值
        
    }
    return 0;
}
