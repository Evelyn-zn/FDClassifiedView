//
//  FDClasSubView.h
//  FDClassifiedView
//
//  Created by sino on 2017/7/7.
//  Copyright © 2017年 Evelyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

#define defaultColor [UIColor lightGrayColor]
@interface FDClasSubView : UIView

@property (nonatomic, strong) UILabel *colorLabel;
@property (nonatomic, strong) UILabel *typeNameLabel;
@property (nonatomic, strong) UILabel *valueLabel;

@property (nonatomic, strong) UIColor *selectLabelColor;
@property (nonatomic, strong) UIColor *unSelectLabelColor;

@property (nonatomic, strong) UIColor *selectTextColor;
@property (nonatomic, strong) UIColor *unSelectTextColor;
@end
