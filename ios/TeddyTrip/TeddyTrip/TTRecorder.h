//
//  TTRecorder.h
//  TeddyTrip
//
//  Created by continuous integration on 01/12/13.
//
//

#import <Foundation/Foundation.h>
#import "TTLocationProvider.h"

@protocol TTRecorderDelegate <NSObject>

- (void)didStartRecording;

@end

@interface TTRecorder : NSObject <TTLocationProviderDelegate>

@property (weak) id<TTRecorderDelegate> delegate;
@property (readonly) BOOL isRecording;
@property (readonly) NSArray *trace;

- (id)initWithLocationProvider:(TTLocationProvider *)locationProvider;

- (void)start;

@end
