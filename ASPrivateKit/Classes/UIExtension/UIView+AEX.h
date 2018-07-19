//
//  UIView+AEX.h
//  ASPrivateKit
//
//  Created by Andrew Shen on 2018/7/19.
//

#import <UIKit/UIKit.h>

@interface UIView (AEX)

@property (nonatomic, strong)  UIView  *bottomLine; // <##>


- (void)as_addBottomLine;

- (void)as_addBottomLineWithLeftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset;
@end

#pragma mark - UILable
@interface UILabel (AEX)

+ (UILabel *)as_createLabelWithFont:(UIFont *)font color:(UIColor *)color;

@end

#pragma mark - UIButton
@interface UIButton (AEX)

+ (UIButton *)as_createButtonWithNormalBGColor:(UIColor *)bgColor titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont normalTitle:(NSString *)normalTitle;
@end

