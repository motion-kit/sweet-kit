module SweetKit
  module Layout

    def sweetkit_label
      font :system.uifont(17)
      numberOfLines 1
      minimumFontSize 10
      autoshrink true
      baseline :align_baselines
      lineBreakMode :tail_truncation
      alignment :left
      color :black
      opaque false
      backgroundColor :clear
    end

    def sweetkit_input
      font :system.uifont(14)
      color :black
      border :rounded
      alignment :left
      opaque false
      backgroundColor :clear
    end

    def sweetkit_name_input
      sweetkit_input
      keyboardType UIKeyboardTypeDefault
      autocapitalizationType UITextAutocapitalizationTypeWords
      autocorrectionType UITextAutocorrectionTypeNo
      spellCheckingType UITextSpellCheckingTypeNo
    end

    def sweetkit_ascii_input
      sweetkit_input
      keyboardType UIKeyboardTypeASCIICapable
    end

    def sweetkit_email_input
      sweetkit_input
      keyboardType UIKeyboardTypeEmailAddress
      autocapitalizationType UITextAutocapitalizationTypeNone
      autocorrectionType UITextAutocorrectionTypeNo
      spellCheckingType UITextSpellCheckingTypeNo
    end

    def sweetkit_url_input
      sweetkit_input
      keyboardType UIKeyboardTypeURL
      autocapitalizationType UITextAutocapitalizationTypeNone
      autocorrectionType UITextAutocorrectionTypeNo
      spellCheckingType UITextSpellCheckingTypeNo
    end

    def sweetkit_number_input
      sweetkit_input
      keyboardType UIKeyboardTypeNumberPad
    end

    def sweetkit_phone_input
      sweetkit_input
      keyboardType UIKeyboardTypePhonePad
    end

    def sweetkit_secure_input
      sweetkit_input
      secureTextEntry true
    end

  end
end
