# README - Orçamento pessoal

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

<h2>Ferramentas utilizadas</h2>

* rvm 1.29.1
* ruby 2.4.1p111
* Rails 5.0.2
* git 2.1.4
* github como repositório

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


<h2>Criando o projeto</h2>
* rails new orcamento_familiar

<h3>Inciar o git</h3>
* git config --global user.name "Gilmar"
* git config --global user.email gilmarnascimento@github.com
* git init
* git add -A
* git status
* git commit -m "Primeira versão"
* git status
* git pull https://github.com/gilmarnascimento/orcamento_familiar.git
* git remote add origin https://github.com/gilmarnascimento/orcamento_familiar.git
* git push


<h3>Criando um branch para o desenvolvimento</h3>
* git checkout -b work


<h3>Instalando template de layout</h3>

* adicionar ao Gemfile gem 'adminlte2-rails'
* Copiar app/assets/stylesheets/application.css para app/assets/stylesheets/application.scss
* rails generate admin_lte2 => y y y
* bundle update => se der erro

===============================================================================

Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
