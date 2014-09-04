class SweetKitShadowHelpersTest < MK::Layout

  def layout
    shadow do
      opacity 0.5
      radius 4
      offset 5
      color :blue
      path UIBezierPath.bezierPath
    end
  end

end


describe SweetKit::ShadowHelpers do

  it 'should run' do
    layout = SweetKitShadowHelpersTest.new.build
    layout.view.layer.shadowOpacity.should == 0.5
    layout.view.layer.shadowRadius.should == 4
    layout.view.layer.shadowOffset.width.should == 5
    layout.view.layer.shadowOffset.height.should == 5
  end

end
