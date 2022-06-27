//
//  WBAVAudioPlayerManager.m
//  Alarm_Clock_UserNotifications
//
//  Created by WENBO on 2022/6/27.
//  Copyright © 2022 欧阳荣. All rights reserved.
//

#import "WBAVAudioPlayerManager.h"
#import <AVFoundation/AVFoundation.h>

@interface WBAVAudioPlayerManager ()

@property (nonatomic, strong) AVAudioPlayer *player;

@end

@implementation WBAVAudioPlayerManager

- (void)playWithFilePath:(NSString *)path {
    if (!path) {
        return;
    }
    
    NSURL *url = [NSURL fileURLWithPath:path];
    
    if (!_player) {
        NSError *error = nil;
        _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        _player.numberOfLoops = 0;
        
        [_player prepareToPlay];
        [_player play];
    }
}



@end
