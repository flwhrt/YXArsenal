//
//  YXb.m
//  YXArsenal
//
//  Created by flwhrt on 2018/11/1.
//  Copyright © 2018年 flwhrt. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "NSString+YXAdd.h"

@interface NSString_YXAddTests : XCTestCase

@end

@implementation NSString_YXAddTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIsNotEmpty {
    NSString *aString = nil;
    XCTAssertFalse([aString isNotEmpty], @"nil should be empty");
    
    aString = @"";
    XCTAssertFalse([aString isNotEmpty], @"'' should be empty");
    
    aString = @" ";
    XCTAssertTrue([aString isNotEmpty], @"' ' should not be empty");
    
    aString = @"\n";
    XCTAssertTrue([aString isNotEmpty], @"'\n' should not be empty");
}

- (void)testIsNotBlank {
    NSString *aString = nil;
    XCTAssertFalse([aString isNotBlank], @"nil should be blank");
    
    aString = @"";
    XCTAssertFalse([aString isNotBlank], @"'' should be blank");
    
    aString = @" ";
    XCTAssertFalse([aString isNotBlank], @"' ' should be blank");
    
    aString = @"\n";
    XCTAssertFalse([aString isNotBlank], @"'\n' should be blank");
    
    aString = @"a";
    XCTAssertTrue([aString isNotBlank], @"'a' should not be blank");
}


- (void)testIsEmpty {
    NSString *aString = nil;
    XCTAssertTrue([NSString isEmpty:aString], @"nil should be empty");
    
    aString = @"";
    XCTAssertTrue([NSString isEmpty:aString], @"'' should be empty");
    
    aString = @" ";
    XCTAssertFalse([NSString isEmpty:aString], @"' ' should not be empty");
    
    aString = @"\n";
    XCTAssertFalse([NSString isEmpty:aString], @"'\n' should not be empty");
}

- (void)testIsBlank {
    NSString *aString = nil;
    XCTAssertTrue([NSString isBlank:aString], @"nil should be blank");
    
    aString = @"";
    XCTAssertTrue([NSString isBlank:aString], @"'' should be blank");
    
    aString = @" ";
    XCTAssertTrue([NSString isBlank:aString], @"' ' should be blank");
    
    aString = @"\n";
    XCTAssertTrue([NSString isBlank:aString], @"'\n' should be blank");
    
    aString = @"a";
    XCTAssertFalse([NSString isBlank:aString], @"'a' should not be blank");
}

- (void)testMatch {
    NSString *aString = @"12345678901";
    
    XCTAssertTrue([aString match:@"1[0-9]{10}"], @"");
    
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
