[![Build Status](https://travis-ci.org/ahtung/bunq_rb.svg?branch=master)](https://travis-ci.org/ahtung/bunq_rb)

# BunqRb

- [Documentation](https://doc.bunq.com/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bunq_rb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bunq_rb

## Usage

First configure the gem

```
BunqRb.configure do |config|
  config.api_key = ENV.fetch("API_KEY")
  config.url = "https://sandbox.public.api.bunq.com"
end
```

## ToDo

- Use Cases
  - ~~Create Session~~
  - Making a payment request
  - Creating a tab payment

---

- INSTALLATION
  - ~~Installation~~
    - POST

    ```ruby
    installation, token, server_public_key = BunqRb::Installation.create(client_public_key: BunqRb.configuration.key.public_key)
    ```

    - GET

    ```ruby
    installation = BunqRb::Installation.find(2348)
    ```

    - LIST

    ```ruby
    installations = BunqRb::Installation.all
    ```

  - ~~Installation server public key~~

    - LIST

    ```ruby
    installation = BunqRb::Installation.find(2348)
    server_public_key = installation.server_public_key
    ```

  - ~~Device~~

    - GET

    ```ruby
    device = BunqRb::Device.find(2348)
    ```

    - LIST

    ```ruby
    devices = BunqRb::Device.all
    ```

  - ~~Device server~~

    - GET

    ```ruby
    device_server = BunqRb::DeviceServer.find(1913)
    ```

    - LIST

    ```ruby
    device_servers = BunqRb::DeviceServer.all
    ```

    - POST

    ```ruby
    device_server = BunqRb::DeviceServer.create(
      description: "Dunya",
      secret: BunqRb.configuration.api_key,
      permitted_ips: []
    )
    ```

  - ~~Permitted IP~~
    - GET
    - LIST
    - POST
    - PUT

  - User credential password IP
    - GET
    - LIST

- SESSION
  - Session
  - ~~SessionServer~~

- USER
  - ~~User~~
    - GET

    ```ruby
    user = BunqRb::User.find(1913)
    ```

    - LIST

    ```ruby
    users = BunqRb::User.all
    ```

  - User person
  - User company
  - Schedule user
- MONETARY ACCOUNTS
  - ~~Monetary account~~
    - GET

    ```ruby
    user = BunqRb::User.find(1913)
    monetary_account = user.monetary_accounts.find(1913)
    ```

    - LIST

    ```ruby
    user = BunqRb::User.find(1913)
    monetary_accounts = user.monetary_accounts
    ```

  - ~~Monetary account bank~~
    - POST
    - PUT
    - GET

    ```ruby
    user = BunqRb::User.find(1913)
    monetary_account_banks = user.monetary_account_banks
    ```

    - LIST

    ```ruby
    user = BunqRb::User.find(1913)
    monetary_account_bank = user.monetary_account_banks.find(1913)
    ```

- PAYMENTS
  - Payment
  - Draft payment
  - Payment batch
  - Request inquiry
  - Request inquiry batch
  - Request response
  - Schedule instance
  - Schedule payment
  - Schedule payment batch
  - Schedule
  - Payment chat
  - Request inquiry chat
  - Request response chat
- TABS
  - Cash register
  - Cash register qr code
  - Cash register qr code content
  - Tab
  - Tab item
  - Tab item batch
  - Tab usage single
  - Tab usage multiple
  - Tab qr code content
  - Tab result inquiry
  - Tab result response
- CARDS
  - Card
  - Card debit
  - Card name
  - Master card action
- CONNECT
  - Share invite bank inquiry
  - Share invite bank response
  - Share invite bank amount used
  - Draft share invite bank
  - Draft share invite bank qr code content
- CHAT
  - Chat conversation
  - Chat message
  - Chat message attachment
  - Chat message text
- INVOICES
  - Invoice
  - Invoice by user
- EXPORTS
  - Customer statement export
  - Customer statement export content
  - Export annual overview
  - Export annual overview content
- CALLBACKS
  - Certificate pinned
- ATTACHMENTS
  - Avatar
  - Attachment public
  - Attachment public content
  - ~~Attachment monetary account~~
  - Attachment tab
  - Attachment tab content
  - Tab attachment tab
  - Tab attachment tab content
  - Attachment conversation
  - Attachment conversation content

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ahtung/bunq_rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
