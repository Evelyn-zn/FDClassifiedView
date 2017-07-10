//
//  FDClassifiedView.h
//  FDClassifiedView
//
//  Created by sino on 2017/7/7.
//  Copyright © 2017年 Evelyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FDClasSubView.h"

typedef NS_ENUM(NSInteger, FDArrangementType){
    FDArrangementTypeHorizontal = 0,
    FDArrangementTypeVertical
    
};

@interface FDClassifiedView : UIView

@property (nonatomic, assign) NSInteger  columnValue; // 展示多少列
//@property (nonatomic, assign) FDArrangementType arrangementType;
@property (nonatomic, strong) NSArray *typeNameArray;
@property (nonatomic, strong) NSArray *valueArray;
@property (nonatomic, strong) NSArray *selectColorArray;
@property (nonatomic, strong) UIColor *unSelectColor;

// 控制选中颜色及数据
- (void)selectClassifiedSubViewWithIndex:(NSInteger)index vlaue:(NSString *)valueStr;

// 多组数据控制
- (void)selectClassifiedSubViewWithIndex:(NSArray *)indexArray value:(NSArray *)valueStrArray;

@end
