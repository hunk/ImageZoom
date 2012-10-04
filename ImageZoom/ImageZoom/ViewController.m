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
	myScrollView.zoomScale = .5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
