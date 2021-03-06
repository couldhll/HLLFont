//
//  HLLFontTests.m
//  HLLFontTests
//
//  Created by CouldHll on 13-10-25.
//  Copyright (c) 2013年 CouldHll. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIFont+HLLFont.h"

@interface HLLFontTests : XCTestCase

@end

@implementation HLLFontTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBold
{
    UIFont *orignalFont=[UIFont fontWithName:@"Helvetica" size:18];
    UIFont *styleFont=[UIFont fontWithName:@"Helvetica-Bold" size:18];
    UIFont *hllFont=[UIFont fontWithFont:orignalFont style:UIFONT_BOLD];
    
    XCTAssertTrue([hllFont.fontName isEqual:styleFont.fontName], @"hllFont[%@] is not styleFont[%@].",hllFont.fontName,styleFont.fontName);
}

- (void)testLight
{
    UIFont *orignalFont=[UIFont fontWithName:@"Helvetica" size:18];
    UIFont *styleFont=[UIFont fontWithName:@"Helvetica-Light" size:18];
    UIFont *hllFont=[UIFont fontWithFont:orignalFont style:UIFONT_LIGHT];
    
    XCTAssertTrue([hllFont.fontName isEqual:styleFont.fontName], @"hllFont[%@] is not styleFont[%@].",hllFont.fontName,styleFont.fontName);
}

- (void)testOblique
{
    UIFont *orignalFont=[UIFont fontWithName:@"Helvetica" size:18];
    UIFont *styleFont=[UIFont fontWithName:@"Helvetica-Oblique" size:18];
    UIFont *hllFont=[UIFont fontWithFont:orignalFont style:UIFONT_OBLIQUE];
    
    XCTAssertTrue([hllFont.fontName isEqual:styleFont.fontName], @"hllFont[%@] is not styleFont[%@].",hllFont.fontName,styleFont.fontName);
}

- (void)testBoldOblique
{
    UIFont *orignalFont=[UIFont fontWithName:@"Helvetica" size:18];
    UIFont *styleFont=[UIFont fontWithName:@"Helvetica-BoldOblique" size:18];
    UIFont *hllFont=[UIFont fontWithFont:orignalFont style:[UIFONT_BOLD stringByAppendingString:UIFONT_OBLIQUE]];
    
    XCTAssertTrue([hllFont.fontName isEqual:styleFont.fontName], @"hllFont[%@] is not styleFont[%@].",hllFont.fontName,styleFont.fontName);
}

- (void)testLightOblique
{
    UIFont *orignalFont=[UIFont fontWithName:@"Helvetica" size:18];
    UIFont *styleFont=[UIFont fontWithName:@"Helvetica-LightOblique" size:18];
    UIFont *hllFont=[UIFont fontWithFont:orignalFont style:[UIFONT_LIGHT stringByAppendingString:UIFONT_OBLIQUE]];
    
    XCTAssertTrue([hllFont.fontName isEqual:styleFont.fontName], @"hllFont[%@] is not styleFont[%@].",hllFont.fontName,styleFont.fontName);
}

- (void)testItalic
{    
    UIFont *orignalFont=[UIFont fontWithName:@"GillSans" size:18];
    UIFont *styleFont=[UIFont fontWithName:@"GillSans-Italic" size:18];
    UIFont *hllFont=[UIFont fontWithFont:orignalFont style:UIFONT_ITALIC];
    
    XCTAssertTrue([hllFont.fontName isEqual:styleFont.fontName], @"hllFont[%@] is not styleFont[%@].",hllFont.fontName,styleFont.fontName);
}

- (void)testBoldItalic
{
    UIFont *orignalFont=[UIFont fontWithName:@"GillSans" size:18];
    UIFont *styleFont=[UIFont fontWithName:@"GillSans-BoldItalic" size:18];
    UIFont *hllFont=[UIFont fontWithFont:orignalFont style:[UIFONT_BOLD stringByAppendingString:UIFONT_ITALIC]];
    
    XCTAssertTrue([hllFont.fontName isEqual:styleFont.fontName], @"hllFont[%@] is not styleFont[%@].",hllFont.fontName,styleFont.fontName);
}

- (void)testLightItalic
{
    UIFont *orignalFont=[UIFont fontWithName:@"GillSans" size:18];
    UIFont *styleFont=[UIFont fontWithName:@"GillSans-LightItalic" size:18];
    UIFont *hllFont=[UIFont fontWithFont:orignalFont style:[UIFONT_LIGHT stringByAppendingString:UIFONT_ITALIC]];
    
    XCTAssertTrue([hllFont.fontName isEqual:styleFont.fontName], @"hllFont[%@] is not styleFont[%@].",hllFont.fontName,styleFont.fontName);
}

@end
