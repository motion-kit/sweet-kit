module SweetKit

  class ButtonState
    attr :view
    attr :state

    def initialize(view, state)
      @view = view
      @state = state
    end

  end

  class ButtonStateHelpers < MotionKit::BaseLayout
    targets ButtonState

    def title(value)
      if value.is_a?(NSAttributedString)
        target.view.setAttributedTitle(value, forState: target.state)
      else
        target.view.setTitle(value, forState: target.state)
      end
    end

    def title_color(value)
      value = value && value.uicolor
      target.view.setTitleColor(value, forState: target.state)
    end

    def title_shadow_color(value)
      value = value && value.uicolor
      target.view.setTitleShadowColor(value, forState: target.state)
    end

    def background_image(value)
      value = value && value.uiimage
      target.view.setBackgroundImage(value, forState: target.state)
    end
    alias backgroundImage background_image

    def image(value)
      value = value && value.uiimage
      target.setImage(value, forState:actual_state)
    end

  end

end
