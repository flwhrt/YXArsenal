//
//  NSString+YXAdd.m
//  YXArsenalTests
//
//  Created by flwhrt on 2018/10/29.
//  Copyright © 2018年 flwhrt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (YXAdd)

+ (BOOL)isEmpty:(NSString *)aString;
+ (BOOL)isBlank:(NSString *)aString;

+ (NSString *)emptyStringIfNil:(NSString *)aString;

+ (NSString *)stringWithDateFormart:(NSString *)format;

- (BOOL)isNotEmpty;
- (BOOL)isNotBlank;

- (BOOL)match:(nonnull NSString *)regex;


- (BOOL)confirmToIDNumber;


@end
