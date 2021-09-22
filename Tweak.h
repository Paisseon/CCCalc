@interface CCUIAppLauncherModule : NSObject
@property (nonatomic, copy, readwrite) NSString* applicationIdentifier;
@end

@interface CCUIAppLauncherViewController : UIViewController
@property (nonatomic, weak, readwrite) CCUIAppLauncherModule* module;
- (UIView *)contentView;
- (UIImage *)glyphImage;
- (BOOL)isCalcModule;
- (UIView *)buttonView;
- (double)headerHeight;
- (double)_footerHeight;
- (CGFloat)preferredExpandedContentWidth;
- (CGFloat)preferredExpandedContentHeight;
@end

@interface SBFApplication : NSObject
- (NSString *)applicationBundleIdentifier;
@end