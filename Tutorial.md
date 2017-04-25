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
