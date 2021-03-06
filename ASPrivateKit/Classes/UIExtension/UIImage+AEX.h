//
//  UIImage+AEX.h
//  ASPrivateKit
//
//  Created by Andrew Shen on 2018/7/19.
//

#import <UIKit/UIKit.h>

@interface UIImage (AEX)

/**
 *  裁剪图片
 *
 *  @param image 要裁剪的图片
 *  @param size  将要裁剪的大小
 *
 *  @return 裁剪好的图片
 */
+ (UIImage *)as_imageScaleFromImage:(UIImage *)image toSize:(CGSize)size;

+ (UIImage *)as_imageWithColor:(UIColor *)color;

/**
 * 创建纯色的图片，用来做背景
 */
+ (UIImage *)as_imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 * 屏幕截图
 */
+ (UIImage *)as_imageScreenshotFromView:(UIView *)view;

/**
 *  想图片添加水印
 *
 *  @param sourceImage 需要加水印的图片
 *  @param maskImage   水印图片
 *
 *  @return 添加好的图片
 */
+ (UIImage *)as_imageAddWatermarkToImage:(UIImage *)sourceImage maskImage:(UIImage *)maskImage maskPosition:(CGPoint)position;


/**
 裁剪带箭头图片
 
 @param offset x方向便宜量
 @return 裁剪后的图片
 */
- (UIImage *)as_imageClipWithArrowXOffset:(CGFloat)offset arrowSize:(CGSize)arrowSize cornerRadius:(CGFloat)cornerRadius;
@end
