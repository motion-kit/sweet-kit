# @requires MotionKit::UIViewHelpers
module MotionKit
  class UIViewHelpers

    def background_color(value)
      target.backgroundColor = value && value.uicolor
    end
    alias backgroundColor background_color

    def content_mode(value)
      value = value.uicontentmode if value.respond_to?(:uicontentmode)
      target.contentMode = value
    end
    alias contentMode content_mode

    def shadow(&block)
      shadow = SweetKit::Shadow.new(target.layer)
      context(shadow, &block)
    end

    def tint_color(value)
      target.tintColor = value && value.uicolor
    end
    alias tintColor tint_color

  end
end
