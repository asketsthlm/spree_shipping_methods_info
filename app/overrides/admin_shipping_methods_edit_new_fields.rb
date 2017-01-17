Deface::Override.new(
  virtual_path:  'spree/admin/shipping_methods/_form',
  name:          'add_new_fields_shipping_methods_edit',
  insert_bottom: '[data-hook="admin_shipping_method_form_fields"]',
  text:          "
    <div class='row'>
      <div data-hook='admin_shipping_method_form_delivery_time_field' class='col-md-6'>
        <%= f.field_container :delivery_time, :class => ['form-group'] do %>
          <%= f.label :delivery_time, Spree.t(:delivery_time, scope: :shipping_methods_info) %>
          <%= f.text_field :delivery_time, :class => 'form-control' %>
          <%= error_message_on :shipping_method, :delivery_time %>
        <% end %>
      </div>
      <div data-hook='admin_shipping_method_form_return_conditions_field' class='col-md-6'>
        <%= f.field_container :return_conditions, :class => ['form-group'] do %>
          <%= f.label :return_conditions, Spree.t(:return_conditions, scope: :shipping_methods_info) %>
          <%= f.text_field :return_conditions, :class => 'form-control' %>
          <%= error_message_on :shipping_method, :return_conditions %>
        <% end %>
      </div>
      <div data-hook='admin_shipping_method_form_shipping_information_field' class='col-md-12'>
        <%= f.field_container :shipping_information, :class => ['form-group'] do %>
          <%= f.label :shipping_information, Spree.t(:shipping_information, scope: :shipping_methods_info) %>
          <%= f.text_field :shipping_information, :class => 'form-control' %>
          <%= error_message_on :shipping_method, :shipping_information %>
        <% end %>
      </div>
    </div>
  "
)
