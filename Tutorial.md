* Instalar rvm => rvm.io
* Instalar git
* Criar projeto
  * rails new orcamento_pessoal

  * Ajustar arquivos de configuração
    * config/application.rb
      * Adicionar as seguintes linhas
        config.time_zone = 'Brasilia'
        config.i18n.default_locale = 'pt-BR'
        config.active_record.raise_in_transactional_callbacks = true

      * Em config/locales/
        * Adicionar o arquivo pt-BR.yml
        * Obter o arquivo em: https://github.com/svenfuchs/rails-i18n/blob/master/rails/locale/pt-BR.yml
        * Para a model e suas mensagens deve-se fazer da seguinte forma
          ---
          tipos_conta:
            create:
              notice: ""
              success: "Tipo de conta foi criado com sucesso."
          ----

          * A controller deve ser alterada para o seguite:
          Exemplo:

          notice: t('.success')
          ---
          format.html { redirect_to @tipo_conta, notice: t('.success') }
          ---

          * Alterar a scaffold das views
            lib/templates/erb/scaffold/index.html.erb
            lib/templates/erb/scaffold/edit.html.erb
            lib/templates/erb/scaffold/new.html.erb
            lib/templates/erb/scaffold/show.html.erb
            lib/templates/erb/scaffold/_form.html.erb

    * config/initializers/inflections.rb
      * https://github.com/tapajos/brazilian-rails/blob/master/lib/inflector_portuguese.rb
        *
        #Adicionar palavras não compostas antes das compostas
         irregulares = {
           'tipo_conta' => 'tipos_conta',
           'TipoConta' => 'TiposConta'
         }

         irregulares.each do |key, value|
           inflect.irregular(key.to_s, value)
           inflect.plural(key.to_s, value)
           inflect.singular(value, key.to_s
         end


         <h3>Instalando template de layout</h3>

         * adicionar ao Gemfile gem 'adminlte2-rails'
         * Copiar app/assets/stylesheets/application.css para app/assets/stylesheets/application.scss
         * rails generate admin_lte2 => y y y
         * bundle update => se der erro

         gilmarnascimento@yd8:~/Desenvolvimento/orcamento_pessoal$ rails generate admin_lte2
Running via Spring preloader in process 3981
      insert  app/assets/stylesheets/application.scss
      insert  app/assets/stylesheets/application.scss
      insert  app/assets/stylesheets/application.scss
      insert  app/assets/stylesheets/application.scss
      insert  app/assets/javascripts/application.js
      insert  app/assets/javascripts/application.js
   identical  app/views/layouts/_admin_lte_2_header.html.erb
   identical  app/views/layouts/_admin_lte_2_sidebar.html.erb
   identical  app/views/layouts/admin_lte_2.html.erb
Add layout to ApplicationController ? (y/n)  y
      insert  app/controllers/application_controller.rb
Login Page ? (y/n) y
      create  app/views/layouts/admin_lte_2_login.html.erb
Devise ? (y/n)  y
     gemfile  devise
         run  bundle install from "."
Using rake 12.0.0
Using concurrent-ruby 1.0.5
Using i18n 0.8.1
Using minitest 5.10.1
Using thread_safe 0.3.6
Using builder 3.2.3
Using erubis 2.7.0
Using mini_portile2 2.1.0
Using rack 2.0.1
Using nio4r 2.0.0
Using websocket-extensions 0.1.2
Using mime-types-data 3.2016.0521
Using arel 7.1.4
Using execjs 2.7.0
Using sass 3.4.23
Using bcrypt 3.1.11
Using bindex 0.5.0
Using byebug 9.0.6
Using coffee-script-source 1.12.2
Using method_source 0.8.2
Using thor 0.19.4
Using orm_adapter 0.5.0
Using ffi 1.9.18
Using multi_json 1.12.1
Using rb-fsevent 0.9.8
Using puma 3.8.2
Using bundler 1.14.6
Using tilt 2.0.7
Using sqlite3 1.3.13
Using turbolinks-source 5.0.0
Using tzinfo 1.2.3
Using nokogiri 1.7.1
Using rack-test 0.6.3
Using warden 1.2.7
Using sprockets 3.7.1
Using websocket-driver 0.6.5
Using mime-types 3.1
Using autoprefixer-rails 6.7.7.1
Using uglifier 3.2.0
Using coffee-script 2.4.1
Using rb-inotify 0.9.8
Using turbolinks 5.0.1
Using activesupport 5.0.2
Using loofah 2.0.3
Using mail 2.6.4
Using bootstrap-sass 3.3.4.1
Using listen 3.0.8
Using rails-dom-testing 2.0.2
Using globalid 0.3.7
Using activemodel 5.0.2
Using jbuilder 2.6.3
Using spring 2.0.1
Using rails-html-sanitizer 1.0.3
Using adminlte2-rails 0.0.6
Using activejob 5.0.2
Using activerecord 5.0.2
Using spring-watcher-listen 2.0.1
Using actionview 5.0.2
Using actionpack 5.0.2
Using actioncable 5.0.2
Using actionmailer 5.0.2
Using railties 5.0.2
Using sprockets-rails 3.2.0
Using coffee-rails 4.2.1
Using responders 2.3.0
Using jquery-rails 4.3.1
Using web-console 3.5.0
Using rails 5.0.2
Using sass-rails 5.0.6
Using devise 4.2.1
Bundle complete! 17 Gemfile dependencies, 70 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
    generate  devise:install
Running via Spring preloader in process 4122
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
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

===============================================================================
      insert  app/controllers/application_controller.rb
gilmarnascimento@yd8:~/Desenvolvimento/orcamento_pessoal$




Configurar as opções de URL padrão para o mailer Devise em cada ambiente. Aqui está uma configuração possível para config / environments / development.rb:

Config.action_mailer.default_url_options = {host: 'localhost', port: 3000}

No seguinte comando você irá substituir MODELO com o nome da classe usado para os usuários do aplicativo (é freqüentemente usuário, mas também pode ser Admin). Isso criará um modelo (se não existir) e configurá-lo com os módulos padrão do Devise. O gerador também configura o arquivo config / routes.rb para apontar para o controlador Devise.

$ rails g devise User
rails db:migrate

Em app/controllers/application_controller.rb

Inserir as seguintes linhas para Rails 5 nessa ordem
  protect_from_forgery with: :exception
  before_action :authenticate_user!
