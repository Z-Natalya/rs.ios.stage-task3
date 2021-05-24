#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    
    NSDateFormatter *formate = [NSDateFormatter new];

    
    if ( monthNumber > 0 && monthNumber < 13) {
        
        NSArray *monthNames = [formate standaloneMonthSymbols];

        NSString *monthName = [monthNames objectAtIndex:(monthNumber - 1)];

    return monthName;
    }
    return nil;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
   

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];

    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ssZZ";
   
    return [[NSCalendar currentCalendar] component:NSCalendarUnitDay fromDate:[dateFormatter dateFromString:date]];
    
    

    

}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    
  
    NSDateFormatter *weekday = [[NSDateFormatter alloc] init];
    weekday.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
   
    [weekday setDateFormat: @"EE"];
     
    return [weekday stringFromDate:date];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger dateWeek = [calendar component:NSCalendarUnitWeekOfYear fromDate:date];
    NSInteger thisWeek = [calendar component:NSCalendarUnitWeekOfYear fromDate:[NSDate now]];
     
    return dateWeek == thisWeek;
 }
  


@end
