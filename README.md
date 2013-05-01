# Encoding issue in Slim for RBX

This `→` character in `app/views/bug/bork.html.slim`
will trigger a `Encoding::InvalidByteSequenceError` when you hit
the `/bug/bork` route.

You can also uncomment the `p` tag in that template to the conversion error
further down in Temple.

[backtraces](https://gist.github.com/jc00ke/5497495)

* clone
* bundle
* bundle exec rackup -s puma -p 4000
* visit [http://localhost:4000/bug/bork](http://localhost:4000/bug/bork)
