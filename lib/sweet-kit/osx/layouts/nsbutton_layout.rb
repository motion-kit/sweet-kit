# @requires MotionKit::NSViewHelpers
module MotionKit
  class NSButtonHelpers < NSViewHelpers
    targets NSButton

    def button_type(value)
      value = value.nsbuttontype if value.respond_to?(:nsbuttontype)
    end
    alias buttonType button_type

    def bezel_style(value)
      value = value.nsbezelstyle if value.respond_to?(:nsbezelstyle)
    end
    alias bezelStyle bezel_style

  end
end
