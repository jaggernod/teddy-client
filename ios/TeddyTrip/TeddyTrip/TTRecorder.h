//
//  TTRecorder.h
//  TeddyTrip
//
//  Created by continuous integration on 01/12/13.
//
//

#import <Foundation/Foundation.h>

@protocol TTRecorderDelegate <NSObject>

- (void)didStartRecording;

@end

@interface TTRecorder : NSObject

@property (weak) id<TTRecorderDelegate> delegate;
@property (readonly) BOOL isRecording;

- (void)start;

@end
