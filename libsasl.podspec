Pod::Spec.new do |s|
  s.name         = "libsasl"
  s.version      = "0.0.1"
  s.summary      = "Mailcore 2 for iOS."
  s.description  = "MailCore 2 provide a simple and asynchronous API to work with e-mail protocols IMAP, POP and SMTP."
  s.homepage     = "http://libmailcore.com"
  s.license      = { :type => "BSD", :file => "LICENSE" }
  s.author       = "MailCore Authors"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/yansorau/mailcore2.git", :tag => "#{s.version}" }

  s.source_files = "Externals/libsasl-ios/include/**/*.h"
  s.public_header_files = "Externals/libsasl-ios/include/**/*.h"
  s.requires_arc = false
  s.vendored_libraries = 'Externals/libsasl-ios/lib/*.a'
  s.prepare_command = "build_for_external=1 ./scripts/build-CZlibetpan-ios.sh"
end
