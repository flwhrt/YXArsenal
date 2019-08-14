//
//  YXPage.h
//  YXArsenal
//
//  Created by flwhrt on 2019/8/14.
//  Copyright © 2019 flwhrt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YXPage : NSObject

@property (nonatomic,assign) NSUInteger total;
@property (nonatomic,assign) NSUInteger pageNum;
@property (nonatomic,assign) NSUInteger pageSize;
@property (nonatomic,assign,readonly,getter=isLastPage) BOOL lastPage;
@property (nonatomic,assign,readonly,getter=isFirstPage) BOOL firstPage;

@end

NS_ASSUME_NONNULL_END
