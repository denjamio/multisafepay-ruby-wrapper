<p align="center">
  <img src="https://www.multisafepay.com/img/multisafepaylogo.svg" width="400px" position="center">
</p>

# Unofficial Ruby wrapper for the MultiSafepay API

This wrapper simplifies working with the MultiSafepay API and allows you to integrate MultiSafepay within your Ruby application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'multisafepay-ruby-wrapper'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install multisafepay-ruby-wrapper

## Usage
Setup the client for testing
```ruby
client = Multisafepay::Client.new(api_key: 'REPLACE WITH API KEY', env: :test)
```
Creating a test order
```ruby
# The following code will create a iDEAL order
client.orders.create({
  type: "redirect",
  order_id: "my-order-id-1",
  gateway: "IDEAL",
  currency: "EUR",
  amount: "1000",
  description: "Test Order Description",
  payment_options: {
      notification_url: "https://www.example.com/client/notification?type=notification",
      redirect_url: "https://www.example.com/client/notification?type=redirect",
      cancel_url: "https://www.example.com/client/notification?type=cancel"
  },
  customer: {
      locale: "en_US"
  }
})
```
Click [here](#) for more examples.
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/denjamio/multisafepay-ruby-wrapper.

## API Documentation
[Click here](https://docs.multisafepay.com/api/) for the MultiSafepay API documentation.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
