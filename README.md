# assets pipeline
As far as you known , assets pipeline on r3.1 is a railtie which wrap the sprockets, and also a group of rask tasks behide it. I abstract this part of features from r3.1 into this assets-pipeline-for-r3. it (almost) does the same thing as in r3.1.

this is a discription form rails_guide on assets pipeline:
The asset pipeline provides a framework to concatenate and minify or compress JavaScript and CSS assets. It also adds the ability to write these assets in other languages such as CoffeeScript, Sass and ERB.

# Installation

1. Add assets-pipeline-for-r3 to your Gemfile:

`gem "assets-pipeline-for-r3" , :git => "git://github.com/up2u0609/assets-pipeline-for-r3.git"`

2. Add follow script in application.rb just after you require "rails/all" like this:

after:

`require "rails/all"`

append:
`require "assets_pipeline_for_r3"`

3. mount the route, add this line into your routes.rb

`mount Rails.application.assets => "/assets" , :as => :assets`



# Usage
  Just enjoy it follow this link from guide of r3.1: http://guides.rubyonrails.org/asset_pipeline.html

# Notice
  1. please CONSIDER CAREFULLY if you really need it, because it will definitly change the way you were applying to manage assets( js ,css, jpg...).
  2. I have to say this gem is very rough and something like smoke, if you like it please upgrade your fwk to R3.1.

