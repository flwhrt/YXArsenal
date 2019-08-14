//
//  YXPage.m
//  YXArsenal
//
//  Created by flwhrt on 2019/8/14.
//  Copyright © 2019 flwhrt. All rights reserved.
//

#import "YXPage.h"

#define DEFAULT_PAGE_NUM 1

@implementation YXPage

- (instancetype)init {
    if (self = [super init]) {
        _pageNum = DEFAULT_PAGE_NUM;
    }
    return self;
}

- (BOOL)isFirstPage {
    return _pageNum == 1;
}

- (BOOL)isLastPage {
    return _pageSize * _pageNum >= _total;
}

@end
