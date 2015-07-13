## Send Keys ##

[![Build Status](https://api.travis-ci.org/leriksen/simple-send-keys.png?branch=master)](http://travis-ci.org/leriksen/simple-send-keys)
[![Coverage Status](https://coveralls.io/repos/leriksen/simple-send-keys/badge.svg?branch=master&service=github)](https://coveralls.io/github/leriksen/simple-send-keys?branch=master)

Send keys is a capybara extension that lets you send keystrokes to an element in the browser. It uses webdriver, so it must be used using the javascript-enabling of your tests (@javascript for cucumber or js: true for rspec).

This gem is based heavily off send-keys, but with less assumptions. send-keys assumes you are using Cucumber and Rails, simple_send_keys does not, it only assumes you're using Capybara.

### Installation ###

In your Gemfile
```ruby
gem 'simple-send-keys'
```

Then in your test
```ruby
require 'simple_send_keys'
```

### Why would you need this ###

Some javascript events only respond to key presses, and at the moment capybara doesn't support the functionality required to pull this off. For example, we wanted to test a text-completion form, where a user was able to start typing a word, and our application would show a list of possible options. With the generic fill_in method this didn't work. This is just one of the many use cases. 

### How to use it ###

First make sure you have capybara configured to use a javascript-capable driver.

Then in your test you can send characters or modifier keys to an element, or an array of modifier keys and keys.

For Example
```ruby
find("input#search").send_keys('gist')
find("input#search").send_keys('[backspace, "gist", f1 , 123]')
find("input#search").send_keys('[shift, a]')' 
```

#### List of modifiers/special keys ####

There are a list of modifier and special keys which can be sent to an element
    
`null, cancel, help, backspace, tab, clear, return, enter, shift, left_shift, control, left_control alt, left_alt, pause, escape, space, page_up, page_down, end, home, left, arrow_left, up, arrow_up, right, arrow_right, down, arrow_down, insert, delete, semicolon, equals, numpad0, numpad1, numpad2, numpad3, numpad4, numpad5, numpad6, numpad7, numpad8, numpad9, multiply, add, separator, subtract, decimal, divide, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12`

##### Please note #####

Different OS' have different ways of simulating modifier keys, as a result not all will work on MacOSX, for example tab may not work. Patch your webdriver to support these keys.