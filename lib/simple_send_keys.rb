require 'capybara'

module SimpleSendKeys
  def allowed_keys
    @allowed_keys ||= %w(
      option
      null
      cancel
      help
      backspace
      tab
      clear
      return
      enter
      shift
      left_shift
      control
      left_control
      alt
      left_alt
      pause
      escape
      space
      page_up
      page_down
      end
      home
      left
      arrow_left
      up
      arrow_up
      right
      arrow_right
      down
      arrow_down
      insert
      delete
      semicolon
      equals
      numpad0 numpad1 numpad2 numpad3 numpad4 numpad5 numpad6 numpad7 numpad8 numpad9
      multiplyadd
      separator
      subtract
      decimal
      divide
      f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12
    ).each_with_object({}){|item,memo| memo[item] = 0}
  end
 
  def send_keys(keys)
    keys_to_send = []

    if matches = keys.match(%r{^\[(.*)\]$})
      keys = matches[1].split(',').map(&:strip)
    else
      keys = [keys]
    end

    keys.each do |k| 
      if matches = k.match(%r{^['"](.*)['"]$})
        keys_to_send << matches[1]
      elsif allowed_keys.has_key?(k)
        keys_to_send << k.to_sym
      else
        keys_to_send << k.to_s
      end
    end
   
    native.send_keys(keys_to_send)
  end
end

Capybara::Node::Base.send :include, SimpleSendKeys
