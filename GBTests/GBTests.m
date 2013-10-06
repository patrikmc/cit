//
//  GBTests.m
//  GBTests
//
//  Created by Patrik McKiernan on 4/10/13.
//  Copyright (c) 2013 Patrik McKiernan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WowUtils.h"

@interface GBTests : XCTestCase

@end

@implementation GBTests

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

- (void)testExample
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

-(void)testCharacterClassNameLookup
{
    XCTAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");
    XCTAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]]);
    
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]]);
}

- (void)testRaceTypeLookup
{
    NSString *fuckmylife = @"Human";
    XCTAssertEqualObjects(fuckmylife, [WoWUtils raceFromRaceType:1], @"They are not the same");
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @"Orc shit");
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]], @"Night elf");
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    XCTAssertEqualObjects(@"Grey", [WoWUtils qualityFromQualityType:1]);
    XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]]);
    // add the rest as an exercise
}

@end


