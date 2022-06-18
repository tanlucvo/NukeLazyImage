#import "React/RCTViewManager.h"

@interface RCT_EXTERN_MODULE(NukeLazyMeofViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(uri, NSString)
RCT_EXPORT_VIEW_PROPERTY(resizeMode, NSString)

@end
