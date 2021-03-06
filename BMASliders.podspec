Pod::Spec.new do |s|

  s.name         = "BMASliders"
  s.version      = "1.0.1"
  s.summary      = "Configurable range and simple sliders, IBInspectable and IBDesignable compatible"
  s.description  = <<-DESC
                   BMASliders` is a set of reusable sliders. It includes two kind of sliders, one with customizable ranges -`BMARangeSlider`- and a simpler one -`BMASlider`- along with its labeled counterparts -`BMALabeledRangeSlider` and `BMALabeledSlider`
                   DESC
  s.homepage     = "http://github.com/badoo/BMASliders"
  s.license      = { :type => "MIT"}
  s.author       = { "Diego Sanchez" => "diego.sanchez@corp.badoo.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/badoo/BMASliders.git", :tag => s.version.to_s }
  s.source_files = "Component/Classes/**/*"
  s.public_header_files = "Component/Classes/*.h"
  s.resources    = "Component/Resources/*"
  s.requires_arc = true

  s.subspec 'RangeSliderOnly' do |ss|
    ss.source_files = 'Component/Classes/BMARangeSlider.{h,m}', 'Component/Classes/BMASlider{Styling,LiveRenderingStyle}.{h,m}'
    ss.public_header_files = 'Component/Classes/BMARangeSlider.h', 'Component/Classes/BMASlider{Styling,LiveRenderingStyle}.h'
  end

end
