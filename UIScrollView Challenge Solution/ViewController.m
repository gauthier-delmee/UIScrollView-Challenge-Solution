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
    
    self.globalImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"worldMap.jpeg"]];
    self.scrollView.contentSize = self.globalImageView.frame.size;
    [self.scrollView addSubview:self.globalImageView];
    
    self.scrollView.delegate = self;
    self.scrollView.maximumZoomScale = 2.0;
    self.scrollView.minimumZoomScale = 0.5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.globalImageView;
}

@end
