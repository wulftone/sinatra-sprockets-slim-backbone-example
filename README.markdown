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

### Explanation

`app.rb` is a Sinatra application that is served from `/`

`config.ru` sets up a rackable Sprockets::Environment instance with
`assets/javascripts`, `assets/stylesheets`, and `assets/templates` added to the load path. This
endpoint is mounted at `/assets`.
