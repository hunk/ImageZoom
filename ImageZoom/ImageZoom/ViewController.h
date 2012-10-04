//
//  ViewController.h
//  ImageZoom
//
//  Created by hunk on 10/4/12.
//  Copyright (c) 2012 mx.com.hunk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>{
	IBOutlet UIScrollView *myScrollView;
	UIImageView *mapView;
}

@end
