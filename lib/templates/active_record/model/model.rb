<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>

<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %><%= ', required: true' if attribute.required? %>
<% end -%>

<% if attributes.any?(&:password_digest?) -%>
  has_secure_password
<% end -%>

<% attributes.select(&:token?).each do |attribute| -%>
  has_secure_token<% if attribute.name != "token" %> :<%= attribute.name %><% end %>
<% end -%>

<% attributes.each do |attribute| -%>
  validates_presence_of :<%= attribute.name %>
<% end -%>

  def to_s
    <%- if attributes.map{ |a| a.name }.include?('nome') and attributes.map{ |a| a.name }.include?('codigo')-%>
    "#{codigo} - #{nome}"
    <%- elsif attributes.map{ |a| a.name }.include?('nome') and attributes.map{ |a| a.name }.include?('numero')-%>
    "#{numero} - #{nome}"
    <%- elsif attributes.map{ |a| a.name }.include?('titulo') and attributes.map{ |a| a.name }.include?('codigo')-%>
    "#{codigo} - #{titulo}"
    <%- elsif attributes.map{ |a| a.name }.include?('titulo') and attributes.map{ |a| a.name }.include?('numero')-%>
    "#{numero} - #{titulo}"
    <%- elsif attributes.map{ |a| a.name }.include?('nome') -%>
    "#{nome}"
    <%- elsif attributes.map{ |a| a.name }.include?('titulo') -%>
    "#{titulo}"
    <%- elsif attributes.map{ |a| a.name }.include?('codigo') -%>
    "#{codigo}"
    <%- elsif attributes.map{ |a| a.name }.include?('numero') -%>
    "#{numero}"
    <%- else -%>
    "#{id}"
    <%- end -%>
  end
end
<% end -%>
