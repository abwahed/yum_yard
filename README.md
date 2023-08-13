# YumYard

Welcome to YumYard!

## Table of Contents

- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Configuration](#configuration)
- [Usage](#usage)

## Getting Started

### Prerequisites

Before you begin, ensure you have the following prerequisites installed:

- Ruby 3.2.0
- Rails 7.0.7

### Installation

1. Clone the repository: `git clone https://github.com/your-username/my-awesome-rails-app.git`
2. Navigate to the project directory: `cd yum_yard`
3. Install gem dependencies: `bundle install`
4. Set up the database: `rails db:setup`
5. Seed initial database: `rails db:seed`
6. Start the Rails server: `rails server`

### Configuration

Open `config/database.yml` file and set the password for your development mysql database.

## Usage

### Food Api
*end_point*: GET `base_url/api/foods`

- **filters** : *name*, *price*, *category* ||
**example** : `base_url/api/foods?category=1&price=800&name=Pizza`
- **paging** : `base_url/api/foods?page=2`

### Coupon Api
- **create**

  *end_point*: POST `base_url/api/coupons`

  *request body*
  ```json
  {
    "coupon" : {
        "food_id" : 12,
        "token" : "offer80",
        "offer_amount": 40
    }
  }
  ```
- **delete**

  *end_point*: DELETE `base_url/api/coupons/:id`

### Order Api
*end_point*: POST `base_url/api/:food_id/process_order`

*request body*
  ```json
  {
    "order" : {
      "ordered": 2,
      "coupon_token": "offer100"
    }
  }
  ```
