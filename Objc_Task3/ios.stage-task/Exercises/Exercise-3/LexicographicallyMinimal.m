#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {


    NSString *resulSting = [[NSString alloc] init];
    
    while ((string1.length != 0) && (string2.length != 0))
    if ([string1 characterAtIndex:0] <= [string2 characterAtIndex:0]) {
        NSString *newString = [string1 substringWithRange:NSMakeRange(0, 1)];
        string1 = [string1 substringFromIndex:1];
        resulSting = [resulSting stringByAppendingString:newString];
    } else {
        NSString *newString = [string2 substringWithRange:NSMakeRange(0, 1)];
        string2 = [string2 substringFromIndex:1];
        resulSting = [resulSting stringByAppendingString:newString];
    }
    if ((string1.length == 0) && (string2.length != 0)) {
        resulSting = [resulSting stringByAppendingString:string2];
    } else {
        resulSting = [resulSting stringByAppendingString:string1];
    }
    
    return  resulSting;
    

}
@end
