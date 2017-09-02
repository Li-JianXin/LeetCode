//
//  main.m
//  LeetCode
//
//  Created by lijianxin on 2017/8/12.
//  Copyright © 2017年 jianxin.li. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Two_Sum_1.h"
#import "Merge_Sorted_Array_88.h"
#import "Maximum_Product_of_Three_Numbers_628.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 普通注释
        NSMutableArray *arr1 = @[@1,@4,@5,@7].mutableCopy;
        NSMutableArray *arr2 = @[@2,@5,@6,@10].mutableCopy;
        [Merge_Sorted_Array_88 merge:arr1 :arr2];;
        
        NSArray *twoSumArr = [Two_Sum_1 twoSum:@[@2,@7,@11,@15] :9];
        NSArray *twoSumArr1 = [Two_Sum_1 twoSum_hash:@[@2,@7,@11,@15] :9];
        NSLog(@"%@  %@",twoSumArr,twoSumArr1);
        
        NSArray *sortArray = @[@1,@3,@4,@7,@8,@2,@6,@5,@13,@15,@12,@20,@28];
        NSInteger value = [Maximum_Product_of_Three_Numbers_628 maximumProduct:sortArray];
        NSLog(@"%ld",value);
        
    }
    return 0;
}
