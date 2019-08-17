//
//  NSString+YXAdd.m
//  YXArsenalTests
//
//  Created by flwhrt on 2018/10/29.
//  Copyright © 2018年 flwhrt. All rights reserved.
//

#import "NSString+YXAdd.h"

@implementation NSString (YXAdd)

+ (BOOL)isEmpty:(NSString *)aString
{
    return ![aString isNotEmpty];
}

+ (BOOL)isBlank:(NSString *)aString
{
    return ![aString isNotBlank];
}

+ (NSString *)emptyStringIfNil:(NSString *)aString
{
    return [aString isNotEmpty] ? aString : @"";
}

- (BOOL)isNotEmpty
{
    return self.length > 0;
}

- (BOOL)isNotBlank
{
    NSString *aString = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [aString isNotEmpty];
}

- (BOOL)match:(NSString *)regex
{
    NSRange r = [self rangeOfString:[NSString stringWithFormat:@"^%@$", regex] options:NSRegularExpressionSearch];
    return r.location != NSNotFound;
}

- (BOOL)confirmToIDNumber
{
    int factors[17] = {7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2};
    NSString *remainders = @"10x98765432";
    int sum = 0;
    for (int i = 0; i < 17; i++) {
        NSString *str = [self substringWithRange:NSMakeRange(i, 1)];
        sum = sum + str.intValue * factors[i];
    }
    int result = sum % 11;
    
    NSRange r = [remainders rangeOfString:[self substringFromIndex:17] options:NSCaseInsensitiveSearch];
    return result == r.location;
}

+ (NSString *)stringWithDateFormart:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = format;
    return [formatter stringFromDate:[NSDate date]];
}

@end
