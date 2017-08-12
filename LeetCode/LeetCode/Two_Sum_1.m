//
//  Two_Sum_1.m
//  LeetCode
//
//  Created by lijianxin on 2017/8/12.
//  Copyright © 2017年 jianxin.li. All rights reserved.
//

#import "Two_Sum_1.h"

/**
 1. Two Sum
 原题地址：https://leetcode.com/problems/two-sum/description/
 Description:
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */


@implementation Two_Sum_1

+ (NSArray *)twoSum:(NSArray <NSNumber *>*)nums :(NSInteger)target {
    NSMutableArray *array = [NSMutableArray array];
    
    for (int i = 0; i < nums.count; i++) {
        for (int j = 1; j <nums.count; j++) {
            if (nums[i].integerValue + nums[j].integerValue == target) {
                array[0] = @(i);
                array[1] = @(j);
                break;
            }
        }
    }
    return array;
}

+ (NSArray *)twoSum_hash:(NSArray <NSNumber *>*)nums :(NSInteger)target {
    /**
     上面的方法时间复杂度是O(n^2)
     这个方法的时间复杂度是O(n)
     原理：求目标值和其中一个数之差在数组中的位置
     */
    NSMutableArray *array = [NSMutableArray array];
    
    NSMutableDictionary <NSString *,NSNumber *> *dict = [NSMutableDictionary dictionary];
    // key 每次目标值和其中一个数的差
    // value 这个差在数组中的位置
    for (int i = 0; i < nums.count; i++) {
        if ([dict.allKeys containsObject:nums[i].stringValue]) {
            array[0] = [dict valueForKey:nums[i].stringValue];
            array[1] = @(i);
        } else {
            [dict setValue:@(i) forKey:@(target - nums[i].integerValue).stringValue];
        }
    }
    
    return array;
}


@end
