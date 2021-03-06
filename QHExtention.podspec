Pod::Spec.new do |s|
s.name         = "QHExtention"                #名称
s.version      = "0.0.6"                 #版本号
s.summary      = "QHExtention desc"        #简短介绍
s.description  = <<-DESC
私有Pods测试
* Markdown 格式
DESC

s.homepage     = "https://github.com/sunqinghua/QHExtention.git"
# s.screenshots  = "www.example.com/screenshots_1.gif"
s.license      = "MIT"                #开源协议
s.author             = { "qh" => "453433112@qq.com" }

s.source       = { :git => "https://github.com/sunqinghua/QHExtention.git", :tag => s.version}
## 这里不支持ssh的地址，只支持HTTP和HTTPS，最好使用HTTPS
## 正常情况下我们会使用稳定的tag版本来访问，如果是在开发测试的时候，不需要发布release版本，直接指向git地址使用
## 待测试通过完成后我们再发布指定release版本，使用如下方式
#s.source       = { :git => "https://github.com/sunqinghua/QHExtention.git", :tag => version }

s.platform     = :ios, "9.0"            #支持的平台及版本，这里我们呢用swift，直接上9.0
s.requires_arc = true                    #是否使用ARC

s.source_files  = "Extention/*.{h,m}"    #OC可以使用类似这样"Classes/**/*.{h,m}"


s.frameworks = 'UIKit', 'QuartzCore', 'Foundation'    #所需的framework,多个用逗号隔开
s.module_name = 'QHExtention'                #模块名称

s.dependency 'SDVersion', "~> 4.3.2"    
s.dependency 'Masonry', "~> 1.0.0"
#依赖关系，该项目所依赖的其他库，如果有多个可以写多个 

end
