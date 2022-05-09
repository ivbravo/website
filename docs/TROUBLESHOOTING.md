# Troubleshooting

Help in case you have errors setting up the website.

##### Error 1:

Error: `-bash: /usr/local/bin/bundle: /System/Library/Frameworks/Ruby.framework/Versions/2.3/usr/bin/ruby: bad interpreter: No such file or directory`

Fix:
> echo 'export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"' >> ~/.zshrc

> source ~/.zshrc

##### Error 2:

Error: `/usr/local/lib/ruby/gems/3.1.0/gems/jekyll-4.2.2/lib/jekyll/commands/serve/servlet.rb:3:in 'require': cannot load such file -- webrick (LoadError)`

Fix:
> bundle add webrick

##### Error 3:

Error: `You don't have write permissions for the /Library/Ruby/Gems/2.6.0 directory`

Fix:
> gem install bundler fastlane cocoapods
