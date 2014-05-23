//
//  ViewController.m
//  Scroll View
//
//  Created by Muhammed on 23.05.2014.
//  Copyright (c) 2014 Muhammed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    temp=0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnRefreshImage:(id)sender {
    
    UIImageView * imageView = [[UIImageView alloc] init];
    UIImage * resim =[UIImage imageNamed:@"resim1.jpg"];

    
    if (temp%3==0) {
        resim =[UIImage imageNamed:@"resim1.jpg"];
        imageView.frame=CGRectMake(0, 0, resim.size.width ,resim.size.height);
        imageView.image=resim;
        _scrollView.contentSize=CGSizeMake(resim.size.width, resim.size.height);
        [_scrollView addSubview:imageView];
    }
    else if (temp%3==1) {
        resim =[UIImage imageNamed:@"resim2.jpg"];
        imageView.frame=CGRectMake(0, 0, resim.size.width ,resim.size.height);
        imageView.image=resim;
        _scrollView.contentSize=CGSizeMake(resim.size.width, resim.size.height);
        [_scrollView addSubview:imageView];
    }
    else if (temp%3==2) {
        resim =[UIImage imageNamed:@"resim3.jpg"];
        imageView.frame=CGRectMake(0, 0, resim.size.width ,resim.size.height);
        imageView.image=resim;
        _scrollView.contentSize=CGSizeMake(resim.size.width, resim.size.height);
        [_scrollView addSubview:imageView];
    }
    temp++;
}



@end
