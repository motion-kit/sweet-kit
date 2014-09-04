# @requires MK::UIViewHelpers
module MotionKit
  class UILabelHelpers < UIViewHelpers
    targets UILabel

    def shadow_color(value)
      value = value && value.uicolor
      target.shadowColor = value
    end
    alias shadowColor shadow_color

    def text_color(value)
      value = value && value.uicolor
      target.textColor = value
    end
    alias textColor text_color

    def highlighted_text_color(value)
      value = value && value.uicolor
      target.highlightedTextColor = value
    end
    alias highlightedTextColor highlighted_text_color

    def font(value)
      value = value && value.uifont
      target.font = value
    end

    def font(value, size: size)
      font = value && value.uifont(size)
      target.font = font
    end

    def line_break_mode(value)
      value = value.uilinebreakmode if value.respond_to?(:uilinebreakmode)
      target.lineBreakMode = value
    end
    alias lineBreakMode line_break_mode

    def text_alignment(value)
      value = value.nstextalignment unless value.is_a? Numeric
      target.textAlignment = value
    end
    alias textAlignment text_alignment

    def baseline_adjustment(value)
      value = value.uibaselineadjustment unless value.is_a? Numeric
      target.baselineAdjustment = value
    end
    alias baselineAdjustment baseline_adjustment

  end
end
