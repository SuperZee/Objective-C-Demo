//
//  SwapDemo.m
//  objective-c-demo
//
//  Created by SpiColorPendra on 16/1/12.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "SwapDemo.h"

@implementation SwapDemo

@synthesize x,y;

void swap2(SwapDemo * s){
    int temp = s.x;
    s.x = s.y;
    s.y = temp;
    NSLog(@"s.x = %d , s.y = %d",s.x,s.y);
}
@end
