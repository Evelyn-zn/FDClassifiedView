//
//  FDClasSubView.m
//  FDClassifiedView
//
//  Created by sino on 2017/7/7.
//  Copyright © 2017年 Evelyn. All rights reserved.
//

#import "FDClasSubView.h"

@implementation FDClasSubView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configView];
    }
    return self;
}

- (void)configView {
    _colorLabel = [[UILabel alloc] init];
    _colorLabel.text = @"";
    _colorLabel.backgroundColor = defaultColor;
    [self addSubview:_colorLabel];
    
    _typeNameLabel = [[UILabel alloc] init];
    _typeNameLabel.textColor = defaultColor;
    _typeNameLabel.textAlignment = NSTextAlignmentLeft;
    _typeNameLabel.font = [UIFont systemFontOfSize:13];
    [self addSubview:_typeNameLabel];
    
    _valueLabel = [[UILabel alloc] init];
    _valueLabel.textColor = defaultColor;
    _valueLabel.font = [UIFont systemFontOfSize:13];
    _valueLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:_valueLabel];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [_colorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(5);
        make.centerY.equalTo(self.mas_centerY);
        make.height.equalTo(@15);
        make.width.equalTo(@5);
        
    }];
    
    [_typeNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_colorLabel.mas_right).offset(5);
        make.top.equalTo(self.mas_top);
        make.height.equalTo(self.mas_height);
        make.width.equalTo(@35);
    }];
    
    [_valueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_typeNameLabel.mas_right).offset(5);
        make.top.equalTo(self.mas_top);
        make.height.equalTo(self.mas_height);
        make.right.equalTo(self.mas_right);
    }];
}

#pragma mark - 设置控件颜色
- (void)setSelectLabelColor:(UIColor *)selectLabelColor {
    if (_selectLabelColor != selectLabelColor) {
        _selectLabelColor = selectLabelColor;
        _colorLabel.backgroundColor = _selectLabelColor;
    }
}

- (void)setUnSelectLabelColor:(UIColor *)unSelectLabelColor {
    if (_unSelectLabelColor != unSelectLabelColor) {
        _unSelectLabelColor = unSelectLabelColor;
        _colorLabel.backgroundColor = _unSelectLabelColor;
    }
}


- (void)setSelectTextColor:(UIColor *)selectTextColor {
    if (_selectTextColor != selectTextColor) {
        _selectTextColor = selectTextColor;
        _typeNameLabel.textColor = _selectTextColor;
        _valueLabel.textColor = _selectTextColor;
    }
}

- (void)setUnSelectTextColor:(UIColor *)unSelectTextColor {
    if (_unSelectTextColor != unSelectTextColor) {
        _unSelectTextColor = unSelectTextColor;
        _typeNameLabel.textColor = _unSelectTextColor;
        _valueLabel.textColor = _unSelectTextColor;
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
