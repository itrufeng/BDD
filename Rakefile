ENV['APP_BUNDLE_PATH'] = './build/Debug-iphonesimulator/BDD-cal.app'

task :default => :test

task :install do
  system 'gem install calabash-cucumber'
  system 'calabash-ios download'
end

task :clean do
  system 'xcodebuild -project BDD.xcodeproj -target BDD-cal -configuration Debug -sdk iphonesimulator clean'
end

task :build => :clean do
  system 'xcodebuild -project BDD.xcodeproj -target BDD-cal -configuration Debug -sdk iphonesimulator build'
end

task :test => :build do
  system 'calabash-ios sim reset'
  system 'cucumber --format html --out result.html --format pretty'
  system 'open result.html'
end
