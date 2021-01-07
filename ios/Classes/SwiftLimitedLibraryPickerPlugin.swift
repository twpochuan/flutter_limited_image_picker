import Flutter
import UIKit
import Photos
import PhotosUI

public class SwiftLimitedLibraryPickerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    print("register!!")
    let channel = FlutterMethodChannel(name: "limited_library_picker", binaryMessenger: registrar.messenger())
    let instance = SwiftLimitedLibraryPickerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

    guard call.method == "openLimitedLibraryPicker" else {
                  result(FlutterMethodNotImplemented)
                  return
                }
    let controller: UIViewController =
                        (UIApplication.shared.delegate?.window??.rootViewController)!
      PHPhotoLibrary.shared().presentLimitedLibraryPicker(from: controller)
  }
}
