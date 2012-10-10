//
//  ViewController.m
//  ImageZoom
//
//  Created by hunk on 10/4/12.
//  Copyright (c) 2012 mx.com.hunk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark UIScrollView delegate methods

- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    
    for (UIView *view in myScrollView.subviews) {
        if ( [view isKindOfClass:[UIButton class]]) {
            if (view.tag == 100) {
                view.center = CGPointMake(RED.x*myScrollView.zoomScale, RED.y*myScrollView.zoomScale);
            }else if (view.tag == 102) {
                view.center = CGPointMake(BLUE.x*myScrollView.zoomScale, BLUE.y*myScrollView.zoomScale);
            }else if (view.tag == 104) {
                view.center = CGPointMake(GREEN.x*myScrollView.zoomScale, GREEN.y*myScrollView.zoomScale);
            }else if (view.tag == 106) {
                CGRect f = view.frame;
                f.size = CGSizeMake(BUTTONSIZE*myScrollView.zoomScale, BUTTONSIZE*myScrollView.zoomScale);
                view.frame = f;
                view.center = CGPointMake(YELLOW.x*myScrollView.zoomScale, YELLOW.y*myScrollView.zoomScale);
            }
        }
    }

}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
	return mapView;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	UIImageView *tepImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"village.jpeg"]];
	mapView = tepImage;
	CGRect f = mapView.frame;
	
	myScrollView.contentSize = CGSizeMake(f.size.width, f.size.height);
	myScrollView.maximumZoomScale = 1.0;
	myScrollView.minimumZoomScale = 0.27;
	myScrollView.clipsToBounds = YES;
	myScrollView.delegate = self;
	
	[myScrollView addSubview:mapView];
	myScrollView.zoomScale = 1;
    

    //add red pin
    UIButton *redPin = [UIButton buttonWithType:UIButtonTypeCustom];
    [redPin setImage:[UIImage imageNamed:@"pin_red"] forState:UIControlStateNormal];
    redPin.frame = CGRectMake(0,0, 48, 48);
    redPin.center = CGPointMake(RED.x*myScrollView.zoomScale, RED.y*myScrollView.zoomScale);
    redPin.tag = 100;
    [myScrollView addSubview:redPin];
    
    //add blue pin
    UIButton *bluePin = [UIButton buttonWithType:UIButtonTypeCustom];
    [bluePin setImage:[UIImage imageNamed:@"pin_blue"] forState:UIControlStateNormal];
    bluePin.frame = CGRectMake(0,0, 48, 48);
    bluePin.center = CGPointMake(BLUE.x*myScrollView.zoomScale, BLUE.y*myScrollView.zoomScale);
    bluePin.tag = 102;
    [myScrollView addSubview:bluePin];
    
    //add green pin
    UIButton *greenPin = [UIButton buttonWithType:UIButtonTypeCustom];
    [greenPin setImage:[UIImage imageNamed:@"pin_green"] forState:UIControlStateNormal];
    greenPin.frame = CGRectMake(0,0, 48, 48);
    greenPin.center = CGPointMake(GREEN.x*myScrollView.zoomScale, GREEN.y*myScrollView.zoomScale);
    greenPin.tag = 104;
    [myScrollView addSubview:greenPin];
    
    //add yellow pin
    UIButton *yellowPin = [UIButton buttonWithType:UIButtonTypeCustom];
    [yellowPin setImage:[UIImage imageNamed:@"pin_yellow"] forState:UIControlStateNormal];
    yellowPin.frame = CGRectMake(0,0, BUTTONSIZE*myScrollView.zoomScale, BUTTONSIZE*myScrollView.zoomScale);
    yellowPin.center = CGPointMake(YELLOW.x*myScrollView.zoomScale, YELLOW.y*myScrollView.zoomScale);
    yellowPin.tag = 106;
    [myScrollView addSubview:yellowPin];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
