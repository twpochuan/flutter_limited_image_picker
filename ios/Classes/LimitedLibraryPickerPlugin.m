#import "LimitedLibraryPickerPlugin.h"
#if __has_include(<limited_library_picker/limited_library_picker-Swift.h>)
#import <limited_library_picker/limited_library_picker-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "limited_library_picker-Swift.h"
#endif

@implementation LimitedLibraryPickerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLimitedLibraryPickerPlugin registerWithRegistrar:registrar];
}
@end
