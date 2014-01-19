//
//  UIFont+FRPAdditions.h
//

#import <UIKit/UIKit.h>

typedef enum {
    FRP_UIFontTextStyleHeadline,
    FRP_UIFontTextStyleSubheadline,
    FRP_UIFontTextStyleBody,
    FRP_UIFontTextStyleCaption1,
    FRP_UIFontTextStyleCaption2,
    FRP_UIFontTextStyleFootnote
} FRP_UIFontTextStyle;

@interface UIFont (FRPAdditions)

+ (UIFont *)frp_preferredFontForTextStyle:(FRP_UIFontTextStyle)style;

@end

