//
//  FDClassifiedView.m
//  FDClassifiedView
//
//  Created by sino on 2017/7/7.
//  Copyright © 2017年 Evelyn. All rights reserved.
//

#import "FDClassifiedView.h"

@implementation FDClassifiedView
{
    NSInteger rowValue;
    NSMutableArray *classifiedSubViews;
}


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        classifiedSubViews = [NSMutableArray array];
    }
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (_typeNameArray.count != 0) {
        if (_typeNameArray.count%_columnValue == 0) {
            rowValue = _typeNameArray.count/_columnValue;
        }else {
            rowValue = _typeNameArray.count/_columnValue + 1;
        }
    }
    
    float viewWidth = self.frame.size.width / (_columnValue + 1);
    float viewHeight = self.frame.size.height / rowValue;
    float spacing = viewWidth / (_columnValue + 1);
//    float spacing = viewWidth / (_columnValue - 1);
    
    for (int i = 0; i < rowValue; i++) {
        for (int j = 0; j < _columnValue; j++) {
            if ((i*_columnValue+j) < _typeNameArray.count) {
                FDClasSubView *subview = [[FDClasSubView alloc] init];
                subview.typeNameLabel.text = self.typeNameArray[i*_columnValue+j];
                subview.valueLabel.text = self.valueArray[i*_columnValue+j];
                subview.unSelectTextColor = self.unSelectColor;
                subview.unSelectLabelColor = self.unSelectColor;
                [self addSubview:subview];
                
                [subview mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.left.equalTo(self.mas_left).offset((j+1)*spacing+j*viewWidth);
                    make.top.equalTo(self.mas_top).offset(i*viewHeight);
                    make.height.equalTo(self.mas_height);
                    make.width.mas_equalTo(viewWidth);
                }];
                [classifiedSubViews addObject:subview];
            }else {
                break;
            }
        }
    }
}

- (void)selectClassifiedSubViewWithIndex:(NSInteger)index vlaue:(NSString *)valueStr {

    if (index < classifiedSubViews.count) {
        FDClasSubView *subview = classifiedSubViews[index];
        subview.selectLabelColor = self.selectColorArray[index];
        subview.selectTextColor = [UIColor blackColor];
        subview.valueLabel.text = valueStr;
    }
}

- (void)selectClassifiedSubViewWithIndex:(NSArray *)indexArray value:(NSArray *)valueStrArray {
    [indexArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSInteger index = [obj integerValue];
        if (index < classifiedSubViews.count) {
            FDClasSubView *subview = classifiedSubViews[index];
            subview.selectLabelColor = self.selectColorArray[index];
            subview.selectTextColor = [UIColor blackColor];
            subview.valueLabel.text = valueStrArray[idx];
        }
    }];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
