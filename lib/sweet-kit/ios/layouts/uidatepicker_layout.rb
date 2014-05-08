module MotionKit
  class UIDatePickerLayout < UIViewLayout
    targets UIDatePicker

    def date_picker_mode(value)
      value = value.uidatepickermode if value.respond_to?(:uidatepickermode)
      target.datePickerMode = value
    end
    alias datePickerMode date_picker_mode

  end
end
