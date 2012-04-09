class MultiCurrenciesHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  Deface::Override.new(:virtual_path => "admin/configurations/index",
                       :name => "converted_admin_configurations_menu_626666908",
                       :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                       :text => "
      <% if current_user.has_role?(:admin) %>
       <tr>
         <td><%= link_to t(\"currency_settings\"), admin_currencies_path %></td>
         <td><%= t(\"currency_description\") %></td>
       </tr>
       <tr>
         <td><%= link_to t(\"currency_converters_settings\"), admin_currency_converters_path %></td>
         <td><%= t(\"currency_converters_description\") %></td>
       </tr>

      <% end %>
     ",
                       :disabled => false)
end
