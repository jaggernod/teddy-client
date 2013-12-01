//
//  TeddyTripTests.m
//  TeddyTripTests
//
//  Created by continuous integration on 26/11/13.
//
//

#import <XCTest/XCTest.h>
#import "TTRecorder.h"

@interface TeddyTripTests : XCTestCase

@end

@implementation TeddyTripTests

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

- (void)testRecorderNotRecordingInInitialState
{
    TTRecorder *recorder = [[TTRecorder alloc] init];
    XCTAssertFalse([recorder isRecording]);
}

@end
