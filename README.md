# spree_gdpr
**This extension is a work in progress**, feel free to contribute and open PR's

spree_gdpr extends the spree_analytics_tracker extention by adding email subscription support via Segment.com, allowing (track.identify) functionality while remaining GDPR compliant.

Using the spree_gdpr extention you can plug-in services like:
* Saasquatch affiliate marketing
* MailChimp email marketing subsriptions

## Installation

1. Add the following extensions to your Gemfile with this line:
  ``` ruby
  gem 'spree_analytics_trackers', github: 'spree-contrib/spree_analytics_trackers' # < Spree 4.1
  gem 'spree_analytics_trackers', '~> 2.0' # Spree 4.1 and up

  gem 'spree_gdpr', github: 'matthewkennedy/spree_gdpr'

  ```

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g spree_analytics_trackers:install
  bundle exec rails g spree_gdpr:install
  ```

4. Restart your server

If your server was running, restart it so that it can find the assets properly.

## Design Goals
Better support Segment.com customer marketing email subscription and affiliate tracking services.

### Frontend (Customer Facing)
1. Allow customers to manage their privacy and marketing consent via the customer accounts page
1. Allow customers to consent to marketing emails at checkout
1. Allow customers to subscribe to emails directly via a form.
1. Give customers the option to consent to cookie usage for marketing on popup
