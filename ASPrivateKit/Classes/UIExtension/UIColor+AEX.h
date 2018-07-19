//
//  UIColor+AEX.h
//  ASPrivateKit
//
//  Created by Andrew Shen on 2018/7/19.
//

#import <UIKit/UIKit.h>

@interface UIColor (AEX)

+ (UIColor *)as_colorWithHex:(NSInteger)hexValue;
+ (UIColor *)as_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;

@end
