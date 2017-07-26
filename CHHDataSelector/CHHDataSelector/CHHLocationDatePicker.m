//
//  CHHLocationDatePicker.m
//  CHHDataSelector
//
//  Created by chenhonghui on 2017/7/26.
//  Copyright © 2017年 chenhh. All rights reserved.
//

#import "CHHLocationDatePicker.h"

@interface CHHLocationDatePicker ()

@property (weak, nonatomic) IBOutlet UIDatePicker *mDatePicker;





@end

@implementation CHHLocationDatePicker

- (instancetype)init {
    self = [super init];
    if(self) {
     
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        NSLog(@"******* initWithFrame ********");
         [self buildBaseView];
    }
    return self;
}

- (void)buildBaseView {
    self.backgroundColor = UIColor.blackColor;
    self.alpha = 0.3;
    
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cancelAction:)];
    [self addGestureRecognizer:tapGR];
    
    UIView *pickView = [[[NSBundle mainBundle] loadNibNamed:@"CHHLocationDatePicker" owner:self options:nil] firstObject];
    pickView.frame = CGRectMake(30, self.center.y - 150, CGRectGetWidth(self.frame) - 60, 300);
    /*
    UIDatePicker *datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(30, self.center.y - 150, CGRectGetWidth(self.frame) - 60, 300)];
    datePicker.datePickerMode = UIDatePickerModeDate;
     */
    
    NSLog(@"self addSubview:pickView");
    [self addSubview:pickView];
    
}

#pragma mark - Action

- (IBAction)cancelAction:(id)sender {
    self.hidden = true;
}

- (IBAction)affirmAction:(id)sender {
    self.hidden = true;
}


@end
