//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Vahan Harutyunyan on 2/10/14.
//  Copyright (c) 2014 Charlie Fulton. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "WowUtils.h"

@interface WowUtilsTests : SenTestCase

@end

@implementation WowUtilsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}




-(void)testCharacterClassNameLookup
{
    // 2
    STAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");
    // 3
    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]],
                  nil);
    
    // 4
    STAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                 nil);
    // add the rest as an exercise
}

- (void)testRaceTypeLookup
{
    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], nil);
    STAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], nil);
    STAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],nil);
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    STAssertEquals(@"Grey", [WoWUtils qualityFromQualityType:1], nil);
    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]],nil);
    // add the rest as an exercise
}


@end
