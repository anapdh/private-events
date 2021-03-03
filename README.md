![](https://img.shields.io/badge/Microverse-blueviolet) ![](https://img.shields.io/badge/RoR-red)


# Associations

In this project we implemented ActiveRecord’s associations, one of the best features Rails offers.

Users are allowed to create events and then manage other users signups. Users can create events and send invitations to parties. Events take place at a specific date and location.
An user can create events and attend many events, and an event can be attended by many users, which requires a many-to-many model relationships.

Full project description: [The Odin Project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations)

## Pre-requisites

- Ruby
- Rails 6.1.1
- SQLite3
- Yarn
- Devise
- Puma

## Built With

- Ruby
- Rails 6.1.1
- SQLite3
- Yarn
- Devise
- Puma
- Git & Github

### Install

Install all the Pre-requisites on your local machine.

### Setup

Open your terminal and go to the directory where you want to clone the repo.

Clone the repository to your local machine. Type `$ git clone https://github.com/anapdh/private-events`.

Go to the members-only directory. Type `$ cd private-events`

Install the necessary gems to run the project. Type `$ bundle install`

Also, please run these commands `rails db:create` and `rails db:migrate` to run all the migration for the database and have all tables updated and ready to be used.

Now your environment is ready to run the project. Type `rails s`, open your browser and paste `localhost:3000`.

## Authors

👩🏼‍💻 **Ana Paula Hübner**

- GitHub: [@anapdh](https://github.com/anapdh)
- LinkedIn: [LinkedIn](https://www.linkedin.com/anapdh)
- Twitter: [@dev_anahub](https://twitter.com/dev_anahub)

👤 **João Paulo Dias**

- GitHub: [@jpdf00](https://github.com/jpdf00)
- Twitter: [@jpdf00](https://twitter.com/jpdf00)
- LinkedIn: [João Paulo Dias França](https://linkedin.com/linkedinhandle)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/anapdh/private-events/issues).

## 📝 License

This project is [MIT](./LICENSE) licensed.