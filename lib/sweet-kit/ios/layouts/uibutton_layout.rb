# @requires MotionKit::UIButtonLayout
module MotionKit
  class UIButtonLayout

    def font(value)
      target.titleLabel.font = value && value.uifont
    end

    def normal(&block)
      button_state = SweetKit::ButtonState.new(target, UIControlStateNormal)
      context(button_state, &block)
    end

    def disabled(&block)
      button_state = SweetKit::ButtonState.new(target, UIControlStateDisabled)
      context(button_state, &block)
    end

    def selected(&block)
      button_state = SweetKit::ButtonState.new(target, UIControlStateSelected)
      context(button_state, &block)
    end

    def highlighted(&block)
      button_state = SweetKit::ButtonState.new(target, UIControlStateHighlighted)
      context(button_state, &block)
    end

    def title_color(value, state: state)
      value = value && value.uicolor
      target.setTitleColor(value, forState: state)
    end

    def title_shadow_color(value, state: state)
      value = value && value.uicolor
      target.setTitleShadowColor(value, forState: state)
    end

    def background_image(value, state: state)
      value = value && value.uiimage
      target.setBackgroundImage(value, forState: state)
    end

    def image(value, state: state)
      value = value && value.uiimage
      target.setImage(value, forState: state)
    end

  end
end
