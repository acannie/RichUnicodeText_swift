Pod::Spec.new do |spec|
  spec.name = "RichUnicodeText"
  spec.version = "1.0.0"
  spec.summary = "Applies pseudo fonts to alphanumeric characters, enabling the representation of rich text using Unicode."
  spec.description = <<-DESC
    A Swift library for applying pseudo fonts to alphanumeric characters, enabling the representation of rich text using Unicode.
  DESC
  spec.homepage = "https://github.com/acannie/RichUnicodeText_swift"
  spec.screenshots = "https://raw.githubusercontent.com/acannie/RichUnicodeText_swift/main/sample_image.png"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author = "acannie"
  spec.platform = :ios, "16.0"
  spec.ios.deployment_target = "16.0"
  spec.swift_versions = "5.0"
  spec.source = { :git => "https://github.com/acannie/RichUnicodeText_swift.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/**/*"
  spec.exclude_files = ""
end
