# @requires MotionKit::NSViewLayout
module MotionKit
  class NSTextFieldLayout < NSViewLayout
    targets NSTextField

    def alignment(value)
      value = value.nstextalignment if value.respond_to?(:nstextalignment)
      cell.setAlignment(value)
    end

    def scrollable(value)
      cell.setScrollable(value)
    end

    def draws_background(value)
      cell.setDrawsBackground(value)
    end
    alias drawsBackground draws_background

  end
end
