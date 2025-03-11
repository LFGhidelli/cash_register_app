Cash Register Project

This is a simple, flexible, and extendable Cash Register application built using Ruby on Rails with PostgreSQL as the database.

Features

Product Catalog: List products on a single view with the ability to select quantities and add items directly to the shopping cart.

Shopping Cart: Efficiently manage items, update quantities, and calculate total prices.

Special Pricing Rules:

Buy One Get One Free (BOGOF) for Green Tea.

Bulk discount for Strawberries: €4.50 each when purchasing 3 or more.

Discounted Coffee: 2/3 of the original price when buying 3 or more coffees.

Technology Stack

Backend: Ruby on Rails

Database: PostgreSQL

Testing Framework: Minitest (TDD methodology)

Frontend: Bootstrap

Setup Instructions

Prerequisites

Ruby (3.0+ recommended)

Rails (7.0+ recommended)

PostgreSQL

Installation

Clone this repository:

git clone https://github.com/yourusername/cash_register.git
cd cash_register
bundle install
yarn install
rails db:create
rails db:migrate
rails db:seed
