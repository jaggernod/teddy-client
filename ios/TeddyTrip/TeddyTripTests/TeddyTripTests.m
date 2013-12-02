//
//  TeddyTripTests.m
//  TeddyTripTests
//
//  Created by continuous integration on 26/11/13.
//
//

#import <XCTest/XCTest.h>
#import "TTRecorder.h"

@interface TeddyTripTests : XCTestCase <TTRecorderDelegate>
{
    int _recorderStartCount;
}

@end

@implementation TeddyTripTests

- (void)didStartRecording
{
    _recorderStartCount += 1;
}

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

- (void)testRecorderStartStartsRecording
{
    TTRecorder *recorder = [[TTRecorder alloc] init];
    [recorder start];
    XCTAssertTrue([recorder isRecording]);
}

- (void)testRecorderNotifiesWhenRecordingStarts
{
    TTRecorder *recorder = [[TTRecorder alloc] init];
    [recorder setDelegate:self];
    [recorder start];
    XCTAssertEqual(1, _recorderStartCount);
}

@end
