//
//  Merge_Sorted_Array_88.m
//  LeetCode
//
//  Created by lijianxin on 2017/8/12.
//  Copyright © 2017年 jianxin.li. All rights reserved.
//

#import "Merge_Sorted_Array_88.h"

/**
 88. Merge Sorted Array
 原题地址：https://leetcode.com/problems/merge-sorted-array/description/
 Description:
 Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
 */

@implementation Merge_Sorted_Array_88

+ (void)merge:(NSMutableArray <NSNumber *>*)arr1 :(NSMutableArray <NSNumber *>*)arr2 {
    NSInteger i = arr1.count -1;
    NSInteger j = arr2.count - 1;
    NSInteger index = arr1.count + arr2.count - 1;
    // 将数组1进行扩展，在空着的索引里填充0
    for (NSInteger i = arr1.count; i < index + 1; i++) {
        [arr1 addObject:@0];
    }
    
    while (i >= 0 && j >= 0) {
        if (arr1[i].integerValue > arr2[j].integerValue) {
            arr1[index] = arr1[i];
            i--;
        } else {
            arr1[index] = arr2[j];
            j--;
        }
        index--;
    }
    
    while (i >= 0) {
        arr1[index] = arr1[i];
        i--;
        index--;
    }
    
    while (j >= 0) {
        arr1[index] = arr2[j];
        j--;
        index--;
    }
    
    NSLog(@"合并后的数组：%@",arr1);
}


/**
 C语言实现
 */
+ (void)mergeSortedArray {
    int nums1[] = { 4, 5, 6, 0, 0, 0 };
    int nums2[] = { 1, 2, 3 };
    int i;
    printf("nums1: ");
    
    for (i = 0; i < 3; i++) {
        printf("%d ", nums1[i]);
    }
    printf("\n");
    
    printf("nums2: ");
    for (i = 0; i < 3; i++) {
        printf("%d ", nums2[i]);
    }
    printf("\n");
    
    merge(nums1, 3, nums2, 3);
    
    printf("merged: ");
    for (i = 0; i < 6; i++) {
        printf("%d ", nums1[i]);
    }
    printf("\n");
}

void merge(int* nums1, int m, int* nums2, int n) {
    int i = m - 1, j = n - 1, index = m + n - 1;
    
    while (i >= 0 && j >= 0) {
        
        if (nums1[i] > nums2[j]) {
            nums1[index] = nums1[i];
            i--;
        } else {
            nums1[index] = nums2[j];
            j--;
        }
        index--;
    }
    
    while (i >= 0) {
        nums1[index] = nums1[i];
        index--;
        i--;
    }
    
    while (j >= 0) {
        nums1[index] = nums2[j];
        index--;
        j--;
    }
    
    
}



@end
