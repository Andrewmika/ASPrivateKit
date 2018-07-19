//
//  UIView+AEX.m
//  ASPrivateKit
//
//  Created by Andrew Shen on 2018/7/19.
//

#import "UIView+AEX.h"
#import <Masonry/Masonry.h>
#import "UIImage+AEX.h"
#import <objc/runtime.h>

@implementation UIView (AEX)
- (UIView *)bottomLine {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setBottomLine:(UIView *)bottomLine {
    objc_setAssociatedObject(self, @selector(bottomLine), bottomLine, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)as_addBottomLine {
    [self as_addBottomLineWithLeftOffset:0 rightOffset:0];
}

- (void)as_addBottomLineWithLeftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset {
    if (!self.bottomLine) {
        UIView *line = [UIView new];
        line.backgroundColor = [UIColor colorWithRed:221.0/255.0 green:221.0/255.0 blue:221.0/255.0 alpha:1];
        [self addSubview:line];
        self.bottomLine = line;
    }
    
    [self.bottomLine mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(self).insets(UIEdgeInsetsMake(0, leftOffset, 0, rightOffset));
        make.height.mas_equalTo(0.5);
    }];
}
@end

#pragma mark - UILable
@implementation UILabel (AEX)

+ (UILabel *)as_createLabelWithFont:(UIFont *)font color:(UIColor *)color {
    UILabel *lb = [UILabel new];
    lb.textColor = color;
    lb.font = font;
    lb.adjustsFontSizeToFitWidth = YES;
    return lb;
}
@end

#pragma mark - UIButton
@implementation UIButton (AEX)

+ (UIButton *)as_createButtonWithNormalBGColor:(UIColor *)bgColor titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont normalTitle:(NSString *)normalTitle {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.titleLabel.font = titleFont;
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitle:normalTitle ?: @"" forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage as_imageWithColor:bgColor] forState:UIControlStateNormal];
    return button;
}
@end
