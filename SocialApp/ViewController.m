//
//  ViewController.m
//  SocialApp
//
//  Created by ArWin on 9/17/15.
//  Copyright (c) 2015 ArWin. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postToTwitter:(id)sender {
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetPost = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetPost setInitialText:@"My first tweet from my iOS app!!!"];
        [self presentViewController:tweetPost animated:YES completion:nil];
    }
}

- (IBAction)postToFacebook:(id)sender {
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
        SLComposeViewController *fBPost = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [fBPost setInitialText:@"My first post from my app"];
        [fBPost addImage:[UIImage imageNamed:@"IMG_1432.JPG"]];
        [self presentViewController:fBPost animated:YES completion:nil];
    }
}
@end
