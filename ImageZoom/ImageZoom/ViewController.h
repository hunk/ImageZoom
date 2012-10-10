//
//  ViewController.h
//  ImageZoom
//
//  Created by hunk on 10/4/12.
//  Copyright (c) 2012 mx.com.hunk. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RED CGPointMake(1100, 420)
#define BLUE CGPointMake(1590, 900)
#define GREEN CGPointMake(565, 350)
#define YELLOW CGPointMake(465, 230)
#define BUTTONSIZE 48


@interface ViewController : UIViewController<UIScrollViewDelegate>{
	IBOutlet UIScrollView *myScrollView;
	UIImageView *mapView;
}

@end
