//
//  ViewController.m
//  CHHDataSelector
//
//  Created by chenhonghui on 2017/7/25.
//  Copyright © 2017年 chenhh. All rights reserved.
//


#import "ViewController.h"

#import "CHHLocationDatePicker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
 
    CHHLocationDatePicker *locationDatePicker = [[CHHLocationDatePicker alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:locationDatePicker];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
