<h1>Homepage</h1>

<ul>
<% flash.each do |key, msg| %>
  <%= content_tag :li, msg, id: key %>
  <% end %>
  </ul>

  <p><%= link_to 'Sign in with Soundcloud', signin_path %></p>
