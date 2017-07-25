//
//  CHHDataSelector.h
//  CHHDataSelector
//
//  Created by chenhonghui on 2017/7/25.
//  Copyright © 2017年 chenhh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CHHDataSelectorDelegate <NSObject>

@optional -(void)pressBackBtn;

@optional -(void)pressEnterBtn;

@end

@interface CHHDataSelector : UIView


@property (nonatomic,strong) id<CHHDataSelectorDelegate> delegate;

//包裹控件的view，与self.view上下左右保持着5dp
@property (weak, nonatomic) IBOutlet UIView *ParentView;

//我们的主角，pickerView
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

//这三个参数放在外面，可供外界调用
@property (nonatomic,strong) NSString *year;

@property (nonatomic,strong) NSString *month;

@property (nonatomic,strong) NSString *day;

//创建一个将年月日组合起来的NSString，并返回
-(NSString *)getDateForMyMode;



@end
