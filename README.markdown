## Sinatra + Sprockets + Slim + Sinatra-reloader Example

Credit comes from [`https://github.com/jch/sinatra-sprockets/`](https://github.com/jch/sinatra-sprockets/)
for the initial inspiration to get this thing working.

### Setup

````
git clone git://github.com/wulftone/sinatra-sprockets-slim.git
cd sinatra-sprockets-slim
bundle exec thin start
firefox localhost:3000
````

### Heroku deployment

When deploying to heroku, make sure you use the `--stack cedar` switch, or else it will complain about no javascript runtime:

    heroku create my_app --stack cedar

### Explanation

I wanted a simple way to get a backbone.js application up and running quickly, so I made this thing!

Basically, it's the barest-of-bones version with embedded examples that you should overwrite to get started.
It has the following stuffs:

* [Backbone.js](http://documentcloud.github.com/backbone/)
* [Eco](https://github.com/sstephenson/eco)
* [Sass](http://sass-lang.com/)
* [Slim](http://slim-lang.com/)
* [Sinatra](http://www.sinatrarb.com/)
* [Sinatra-reloader](http://www.sinatrarb.com/contrib/reloader.html)
* [Sprockets](https://github.com/sstephenson/sprockets)
* [Tilt](https://github.com/rtomayko/tilt)
* [Underscore.js](http://documentcloud.github.com/underscore/)
* [Zepto.js](http://zeptojs.com/)

`app.rb` is a Sinatra application that is served from `/`

`config.ru` sets up a rackable Sprockets::Environment instance with
`assets/javascripts`, `assets/stylesheets`, and `assets/templates` added to the load path. This
endpoint is mounted at `/assets`.
