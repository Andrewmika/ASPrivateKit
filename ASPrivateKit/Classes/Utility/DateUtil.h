//
//  DateUtil.h
//  Shape
//
//  Created by Andrew Shen on 15/11/5.
//  Copyright © 2015年 Andrew Shen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateUtil : NSObject

// 获取某日期前/后几天日期
+ (NSDate *)dateFromDate:(NSDate *)fromDate intervalDay:(NSInteger)intervalDay;

// 指定Date包含的单位
+ (NSDate *)dateWithComponents:(NSCalendarUnit)unitFlags date:(NSDate *)date;

// 将Date转为String
+ (NSString *)stringDateWithDate:(NSDate *)date dateFormat:(NSString *)format;

// 将string转Date
+ (NSDate *)convertDateFromString:(NSString*)uiDate;

// 将一定格式string转Date
+ (NSDate *)convertDateFromString:(NSString*)dateString formatString:(NSString *)format;


/**
 *  获得日期的NSDateComponents
 */
+ (NSDateComponents *)dateComponentsForDate:(NSDate *)date;

/**
 *  将时长秒数转换为带角标的分秒string格式
 *
 *  @param timeinterval 时长（秒）
 *
 *  @return 带角标的分秒string
 */
+ (NSString *)stringWithSecond:(long)timeinterval;
@end
