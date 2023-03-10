Pod::Spec.new do |s|
  s.name         = "MailCore"
  s.version      = "0.0.1"
  s.summary      = "Mailcore 2 for iOS."
  s.description  = "MailCore 2 provide a simple and asynchronous API to work with e-mail protocols IMAP, POP and SMTP."
  s.homepage     = "http://libmailcore.com"
  s.license      = { :type => "BSD", :file => "LICENSE" }
  s.author       = "MailCore Authors"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/yansorau/mailcore2.git", :tag => "#{s.version}" }

  s.source_files = "src/MailCore.h", "src/{async,core,objc}/**/*.{h,m,mm,c,cpp}"
  s.public_header_files = "src/MailCore.h", "src/{async,core,objc}/**/{MC*,*MCO}.h"
  s.libraries = "iconv", "xml2", "z", "c++", "resolv"
  s.requires_arc = false
  s.xcconfig     = { 'USER_HEADER_SEARCH_PATHS' => '${PODS_TARGET_SRCROOT}/src/**' }
  s.vendored_frameworks = 'Externals/*.framework'
  s.exclude_files = "**/*win32.{c,cpp}", "**/*Android.cpp", "**/*GTK.cpp", "**/mini{zip,unz}.c"
  s.resources = ['resources/providers.json']
  s.dependency 'libetpan'
  s.dependency 'ctemplate'
  s.dependency 'libsasl'
  s.dependency 'tidy'
end
