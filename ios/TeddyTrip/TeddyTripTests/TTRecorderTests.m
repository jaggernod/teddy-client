//
//  TTRecorderTests.m
//  TTRecorderTests
//
//  Created by continuous integration on 26/11/13.
//
//

#import <XCTest/XCTest.h>
#import "TTRecorder.h"

@interface TTRecorderTests : XCTestCase <TTRecorderDelegate>
{
    TTRecorder *_recorder;
    int _recorderStartCount;
}

@end

@implementation TTRecorderTests

- (void)didStartRecording
{
    _recorderStartCount += 1;
}

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _recorder = [[TTRecorder alloc] init];
    [_recorder setDelegate:self];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRecorderNotRecordingInInitialState
{
    XCTAssertFalse([_recorder isRecording]);
}

- (void)testRecorderStartStartsRecording
{
    [_recorder start];
    XCTAssertTrue([_recorder isRecording]);
}

- (void)testRecorderNotifiesWhenRecordingStarts
{
    [_recorder start];
    XCTAssertEqual(1, _recorderStartCount);
}

@end
