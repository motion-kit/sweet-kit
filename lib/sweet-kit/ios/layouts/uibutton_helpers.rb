# @requires MotionKit::UIButtonHelpers
module MotionKit
  class UIButtonHelpers

    def font(value)
      target.titleLabel.font = value && value.uifont
    end

    def font(value, size: size)
      font = value && value.uifont(size)
      target.titleLabel.font = font
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


    def rounded_button(value)
      layer do
        corner_radius value
        masks_to_bounds true
      end
    end
  end
end
