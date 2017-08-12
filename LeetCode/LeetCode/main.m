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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *arr1 = @[@1,@4,@5,@7].mutableCopy;
        NSMutableArray *arr2 = @[@2,@5,@6,@10].mutableCopy;
        [Merge_Sorted_Array_88 merge:arr1 :arr2];;
        
        NSArray *twoSumArr = [Two_Sum_1 twoSum:@[@2,@7,@11,@15] :9];
        NSArray *twoSumArr1 = [Two_Sum_1 twoSum_hash:@[@2,@7,@11,@15] :9];
        NSLog(@"%@  %@",twoSumArr,twoSumArr1);
        
    }
    return 0;
}
