Spree Downloads
==============


### Design Goals

* Multiple formats associated with a single download
* Ability to download a zip of a single download, or a zip of a group of downloads
* In the case of multiple formats associated with a download, the ability to specify a primary format
* Automatic thumbnail generation with a placeholder for unsupported formats (i.e. .doc)
* Associate a download with multiple products, or multiple taxons


Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2013 Michael Bianco, released under the New BSD License
