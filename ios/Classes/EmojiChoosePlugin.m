#import "EmojiChoosePlugin.h"
#if __has_include(<emoji_choose/emoji_choose-Swift.h>)
#import <emoji_choose/emoji_choose-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "emoji_choose-Swift.h"
#endif

@implementation EmojiChoosePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEmojiChoosePlugin registerWithRegistrar:registrar];
}
@end
