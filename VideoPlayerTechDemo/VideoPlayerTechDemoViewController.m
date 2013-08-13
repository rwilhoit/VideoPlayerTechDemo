//
//  VideoPlayerTechDemoViewController.m
//  VideoPlayerTechDemo
//
//  Created by Raj Wilhoit on 8/13/13.
//  Copyright (c) 2013 UF.rajwilhoit. All rights reserved.
//

#import "VideoPlayerTechDemoViewController.h"

@interface VideoPlayerTechDemoViewController ()

@end

@implementation VideoPlayerTechDemoViewController

@synthesize moviePlayer;  // Supports .mov, .mp4, .mpv, .3gp


- (void)viewDidLoad
{
    [super viewDidLoad];

    // File name
    NSString *fileName = @"http://www.jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v";
    
    // NSURL holds the URL to our file on the server
    NSURL *url = [[NSURL alloc] initWithString:fileName];
    
    // Create the movie player
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    
    // Set the frame of the movie player if you wish for it to be embedded
    [moviePlayer.view setFrame:self.view.bounds];
    [self.view addSubview:moviePlayer.view];
    
   /* Customizable properties
    * contentURL - The URL that points to the movie file.
    * movieSourceType - The playback type of the movie.
    * movieMediaTypes - The types of media available in the movie. (read-only)
    * allowsAirPlay - Specifies whether the movie player allows AirPlay movie playback.
    * airPlayVideoActive - ndicates whether the movie player is currently playing video via AirPlay.
    * naturalSize - The width and height of the movie frame. (read-only)
    * fullscreen - A Boolean that indicates whether the movie player is in full-screen mode.
    * – setFullscreen:animated: - Causes the movie player to enter or exit full-screen mode.
    * scalingMode - The scaling mode to use when displaying the movie.
    * controlStyle The style of the playback controls. 
    */
    
    moviePlayer.fullscreen = YES;
    moviePlayer.allowsAirPlay = YES;
    moviePlayer.shouldAutoplay = YES;
    moviePlayer.controlStyle = MPMovieControlStyleFullscreen; // Customize the player controls
    
    [moviePlayer setFullscreen:YES animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
