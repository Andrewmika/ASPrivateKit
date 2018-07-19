//
//  UIColor+AEX.m
//  ASPrivateKit
//
//  Created by Andrew Shen on 2018/7/19.
//

#import "UIColor+AEX.h"

@implementation UIColor (AEX)

+ (UIColor *)as_colorWithHex:(NSInteger)hexValue {
    return [self as_colorWithHex:hexValue alpha:1.0];
}

+ (UIColor *)as_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue {
    return [UIColor colorWithRed:((double)((hexValue & 0xFF0000) >> 16)) / 255.0
                           green:((double)((hexValue & 0xFF00) >> 8)) / 255.0
                            blue:((double)(hexValue & 0xFF)) / 255.0
                           alpha:alphaValue];
}
@end
