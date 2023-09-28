<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
  - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
- [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)


# 📖 [Meals Budgeting App] <a name="about-project"></a>

**[Meals Budgeting App]** Is an example of a budgetting app that keeps track of your spending on meals. It allows you to place orders for meals you've added. Original design idea by <a href="https://www.behance.net/gregoirevella">Gregoire Vella on Behance</a> 

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>


### Key Features <a name="key-features"></a>

- Data Model.
- Processing data in models.
- Validations.
- Setup controllers and basic routing.
- Controllers specs.
- Structured views.
- Styling.
- Form for creating meals and orders.
- Pages to view all meals and orders.
- Add Devise for Authentication
- Add Cancancan for Authorization
- Rspec and Integration tests.

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

> You need the following tools be installed in your computer:

> - [Git](https://www.linode.com/docs/guides/how-to-install-git-on-linux-mac-and-windows/)
> - [Ruby](https://github.com/microverseinc/curriculum-ruby/blob/main/simple-ruby/articles/ruby_installation_instructions.md)
> - [Ruby on Rails](https://rubyonrails.org/)
> - IDE
> - Etc

### Setup

Clone this repository to your desired folder:

```sh
  cd my-prefered-folder
  
  git clone https://github.com/ClintonYounge/Meals-Budgeting-App.git

```

### Install

Install this project with:

```sh
  cd Meals-Budgeting-App
  
  bundle install
```

### Update database.yml file with database credentials
- Navigate to config/database.yml
- Update the user and password to match your postgresql user and password.

### Create database and migrate
Run the following code-

```sh
  rails db:create
  rails db:migrate
```

### Run server
```sh
  rails s
```

### Run tests

To run tests, run the following command:

Run the `rspec` command in your console to run the tests.

## 👥 Authors <a name="authors"></a>

👤 **Clinton Younge**

- GitHub: [@ClintonYounge](https://github.com/ClintonYounge)
- Linkedin: [@clinton-younge](https://www.linkedin.com/in/clinton-younge-83386a25a/)
- Twitter: [@YoungeCjay](https://twitter.com/YoungeCjay)

## 🔭 Future Features <a name="future-features"></a>
- Video presentation.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ClintonYounge/My-Blog-App/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project feel free to leave a star to show your support.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to give thanks to Microverse for providing an environment that makes me strive to grow as developers.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 📝 License <a name="license"></a>

This project is [License](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
