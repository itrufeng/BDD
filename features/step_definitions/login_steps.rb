假如 /^我在(.*)界面$/ do |text|
  element_exists("#{text}")
  sleep(STEP_PAUSE)
end

并且 /^我点击(.*)$/ do |text|
  touch("view marked:'#{text}'")
  sleep(STEP_PAUSE)
end

并且 /^我输入(.*)$/ do |text|
  keyboard_enter_text("#{text}")
  sleep(STEP_PAUSE)
end

并且 /^截个屏$/ do
  screenshot_embed({:prefix => nil, :name => nil})
  sleep(STEP_PAUSE)
end

那么 /^我应该看到(.*)$/ do |text|
  check_element_exists("view marked:'#{text}'")
  sleep(STEP_PAUSE)
end

那么 /^我跳转到(.*)界面$/ do |text|
  check_element_exists("view marked:'#{text}'")
  sleep(STEP_PAUSE)
end
