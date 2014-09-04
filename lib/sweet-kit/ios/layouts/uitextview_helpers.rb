# @requires MotionKit::UIViewHelpers
module MotionKit
  class UITextViewHelpers < UIViewHelpers
    targets UITextView

    def keyboard_type(value)
      value = value.uikeyboardtype if value.respond_to?(:uikeyboardtype)
      target.setKeyboardType(value)
    end
    alias keyboardType keyboard_type

    def return_key_type(value)
      value = value.uireturnkey if value.respond_to?(:uireturnkey)
      target.setReturnKeyType(value)
    end
    alias returnKeyType return_key_type

    def text_color(value)
      value = value && value.uicolor
      target.setTextColor(value)
    end
    alias textColor text_color

    def font(value)
      value = value && value.uifont
      target.setFont(value)
    end

    def font(value, size: size)
      value = value && value.uifont(size)
      target.setFont(value)
    end

    def text_alignment(value)
      value = value.uitextalignment if value.respond_to?(:uitextalignment)
      target.setTextAlignment(value)
    end
    alias textAlignment text_alignment

  end
end
