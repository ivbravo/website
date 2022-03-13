# Online Art Gallery Website

Online Art Gallery website

### How-to

* Install dependencies: `bundle install`
* Load server: `bundle exec jekyll serve`
* Open: `open -a "Google Chrome" index.html`
* Load website: `http://localhost:4000` 

### Troubleshooting

Error: `You don't have write permissions for the /Library/Ruby/Gems/2.6.0 directory`

Run:

> echo 'export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"' >> ~/.zshrc

> source ~/.zshrc

Error: `-bash: /usr/local/bin/bundle: /System/Library/Frameworks/Ruby.framework/Versions/2.3/usr/bin/ruby: bad interpreter: No such file or directory`

Run:

> gem install bundler fastlane cocoapods

Error: `/usr/local/lib/ruby/gems/3.1.0/gems/jekyll-4.2.2/lib/jekyll/commands/serve/servlet.rb:3:in 'require': cannot load such file -- webrick (LoadError)``

Run:

> bundle add webrick
