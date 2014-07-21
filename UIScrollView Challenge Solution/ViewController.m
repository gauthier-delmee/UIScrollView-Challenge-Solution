//
//  ViewController.m
//  UIScrollView Challenge Solution
//
//  Created by Gauthier Delmee on 21/07/2014.
//  Copyright (c) 2014 Expectancy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //set the image to show and set the size of the image to show
    self.globalImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"worldMap.jpeg"]];
    self.scrollView.contentSize = self.globalImageView.frame.size;
    [self.scrollView addSubview:self.globalImageView];
    
    //implement the UIScrollView protocol and set zooming from 0.5 of the image size to twice the image size
    self.scrollView.delegate = self;
    self.scrollView.maximumZoomScale = 2.0;
    self.scrollView.minimumZoomScale = 0.5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIScrollView Protocol

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.globalImageView;
}

@end
