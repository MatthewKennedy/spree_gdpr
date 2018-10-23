# spree_gdpr
This extension is designed for use with Spree 3.5 > extending the Spree Analytics Trackers Segment.com functionality allowing (track.identify) functionality while remaining GDPR compliant.

Via Segment.com you can plug-in also a lot of additional vendors and services like:
* Mixpanel
* Kissmetrics
* Google Analytics
* Facebook Pixels
* Google Ads re-marketing & conversion tracking
* Bing Ads UET & conversion tracking
* Saasquatch affiliate marketing
* Intercom live chat
* MailChimp Marketing emails
* HotJar heat maps
* [and hundreds others](https://segment.com/catalog#integrations/all)

## Installation

1. Add the following extensions to your Gemfile with this line:
  ``` ruby
  gem 'spree_analytics_trackers', github: 'spree-contrib/spree_analytics_trackers'
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

### Frontend (Customer Facing)
1. Allow customers to manage their privacy and marketing consent via the customer accounts page
1. Allow customers to consent to marketing emails at checkout
1. Allow customers to subscribe to emails directly via a form.
1. Give customers the option to consent to cookie usage for marketing on popup

### Backend (Admin)
1. Allow admins to view customer consent values in users.
