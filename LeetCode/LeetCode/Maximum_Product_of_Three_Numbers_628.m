//
//  Maximum_Product_of_Three_Numbers_628.m
//  LeetCode
//
//  Created by lijianxin on 2017/8/12.
//  Copyright © 2017年 jianxin.li. All rights reserved.
//

#import "Maximum_Product_of_Three_Numbers_628.h"

/**
 628. Maximum Product of Three Numbers
 原题地址：https://leetcode.com/problems/maximum-product-of-three-numbers/description/
 Description:
 Given an integer array, find three numbers whose product is maximum and output the maximum product.
 
 Example 1:
 Input: [1,2,3]
 Output: 6
 
 Example 2:
 Input: [1,2,3,4]
 Output: 24
 
 找出数组的三个数，使得这三个数的乘积达到最大;
 
 */

@implementation Maximum_Product_of_Three_Numbers_628

+ (NSInteger)maximumProduct:(NSArray <NSNumber *>*)nums {
    // 排序
    NSArray <NSNumber *>*array = [nums sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if ([obj1 integerValue] > [obj2 integerValue]) {
            return (NSComparisonResult)NSOrderedDescending;
        }
        
        if ([obj1 integerValue] < [obj2 integerValue]) {
            return (NSComparisonResult)NSOrderedAscending;
        }
        return (NSComparisonResult)NSOrderedSame;
    }];
    NSLog(@"%@  %@",NSStringFromClass([self class]),array);
    NSInteger value1,value2;
    // 第一种情况
    value1 = array.lastObject.integerValue * array[array.count - 2].integerValue * array[array.count - 3].integerValue;
    // 第二种情况
    value2 = array.firstObject.integerValue * array[1].integerValue * array[array.count - 1].integerValue;
    return value1 > value2 ? value1 :value2;
}

@end
