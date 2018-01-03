# nymph-generate
This is a git repository containing the code for the Ruby Gem nymph-generate to be used alongside the Nymph Game Engine.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nymph-generate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nymph-generate

## Usage
The output of `nymph-generate` will generate a C++ header file called `generated_registrations.h`. This contains all of the setup needed for adding specific c++ classes and methods to [Chaiscript](https://github.com/ChaiScript/ChaiScript).

After the gem is installed, running is as simple as:
```bash
nymph-generate
```

By default, `nymph-generate` will look for a directory called `src`, and search every file recursively within that directory. Also by default, it will drop the generated header into `src/generated/`. You can specify a directory to search, as well as directory to put the output header.

```bash
nymph-generate /path/of/source/to/search /path/of/header/destination
```

Within this header file is all of the necessary code to register your desired classes and methods into the chaiscript runtime. The only thing from this file that needs to be called is:
```c++
// generated_registrations.h
namespace generated {
  ...
  ...
  void registerModules(std::shared_ptr<chaiscript::ChaiScript> chai);
  ...
}
```

All you have to give this function is a shared_ptr to the chaiscript object within your program. Make sure this is called before loading and running any scripts, otherwise they will not be there for your scripts to see.

## Flagging Header Files For Processing
There are flags that are used to let `nymph-generate` know which classes and methods to target. To let `nymph-generate` know that it needs to start processing, it looks for comments starting with:
```c++
//=
```

More to come, TODO

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment. You can also run `bin/nymph-generate` to run this gem without installing it. This is good for development and testing.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sainteos/nymph-generate.
