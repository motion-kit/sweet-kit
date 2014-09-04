class SweetKitCAHelpersTest < MK::Layout
  attr :did_run

  def layout
    layer do
      @did_run = false
      background_color :blue
      border_color :blue
      shadow do
        color :black
        @did_run = true
      end
      @did_run &&= true
    end
  end

end


describe 'SweetKit::CALayer additions' do

  it 'should run' do
    layout = SweetKitCAHelpersTest.new.build
    layout.did_run.should == true
  end

end
