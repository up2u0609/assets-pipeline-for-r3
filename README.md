# assets pipeline
As far as you known , assets pipeline on r3.1 is a railtie which wrap the sprockets, and also a group of rask tasks behide it. I abstract this part of features from r3.1 into this assets-pipeline-for-r3. it (almost) does the same thing as in r3.1.


# Installation

1. Add surveyor to your Gemfile (add add haml too if you have not already):

`gem "sprockets_rails" , :git => "git://github.com/up2u0609/assets-pipeline-for-r3.git"`

2. Add follow script in application.rb just after you require "rails/all" like this:

`require "rails/all"`
`require `assets_pipeline_for_r3`

# Usage
  Just enjoy it follow this link from guide of r3.1: http://guides.rubyonrails.org/asset_pipeline.html

# Notice
  1. please CONSIDER CAREFULLY if you really need it, because it will definitly change the way you were applying to manage assets( js ,css, jpb...).
  2. I have to say this gem is very rough and something like smoke, if you like it please upgrade your fwk to R3.1.
