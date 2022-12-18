use_frameworks!

target "samplensapporig" do
post_install do |installer|
  post_installNativeScript_CLI_Architecture_Exclusions_0 installer
end

# Begin Podfile - /Users/ios/Documents/sample-ns-app-orig/platforms/ios/Podfile-exclusions
def post_installNativeScript_CLI_Architecture_Exclusions_0 (installer)
  installer.pods_project.build_configurations.each do |config|
    config.build_settings.delete "VALID_ARCHS"
    config.build_settings["EXCLUDED_ARCHS_x86_64"] = "arm64 arm64e"
    config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "i386 armv6 armv7 armv7s armv8 $(EXCLUDED_ARCHS_$(NATIVE_ARCH_64_BIT))"
    config.build_settings["EXCLUDED_ARCHS[sdk=iphoneos*]"] = "i386 armv6 armv7 armv7s armv8 x86_64"
  end
end
# End Podfile
end