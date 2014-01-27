//
//  UIFont+FRPAdditions.m
//

#import "UIFont+FRPAdditions.h"

@implementation UIFont (FRPAdditions)

+ (UIFont *)frp_preferredFontForTextStyle:(FRP_UIFontTextStyle)style
{
    if ([[UIFont class] respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        switch (style) {
            case FRP_UIFontTextStyleBody:
                return [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
            case FRP_UIFontTextStyleCaption1:
                return [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
            case FRP_UIFontTextStyleCaption2:
                return [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
            case FRP_UIFontTextStyleFootnote:
                return [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
            case FRP_UIFontTextStyleHeadline:
                return [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
            case FRP_UIFontTextStyleSubheadline:
                return [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
        }
    } else {
        switch (style) {
            case FRP_UIFontTextStyleBody:
                return [UIFont fontWithName:@"HelveticaNeue-Light" size:15];
            case FRP_UIFontTextStyleCaption1:
                return [UIFont fontWithName:@"HelveticaNeue-Medium" size:11];
            case FRP_UIFontTextStyleCaption2:
                return [UIFont fontWithName:@"HelveticaNeue-Medium" size:11];
            case FRP_UIFontTextStyleFootnote:
                return [UIFont fontWithName:@"HelveticaNeue-Medium" size:12];
            case FRP_UIFontTextStyleHeadline:
                return [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
            case FRP_UIFontTextStyleSubheadline:
                return [UIFont fontWithName:@"HelveticaNeue-Light" size:14];
        }
    }
}

@end

