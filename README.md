Rails Versioned API Example
===========================

This is an example of establishing API versioning on top of an existing,
unversioned Rails API.

## Getting Started

1. Clone the repo

   ```
   $ git clone git@github.com:iamvery/rails-api-example.git
   $ cd rails-api-example
   ```

2. Install dependencies

   ```
   $ bundle install
   ```

3. Watch the specs pass

   ```
   $ bin/rspec
   ... 0 failures
   ```

## Initial implementation

The initial, unversioned implementation is at https://github.com/iamvery/rails-api-example/tree/initial-api-implementation.
From there the commits incrementally add versioning to the API using HTTP
accept headers with a [vendor mime type](http://en.wikipedia.org/wiki/Internet_media_type#Vendor_tree).
