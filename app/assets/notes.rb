<% @characters.each do |character| %>
<div class = "stark">
  <% if character.house.name === "Stark" %>
  <img id="stark_img" src="<%= character.img_url %>">
</div>
<div class= "lannister">
  <% elsif character.house.name === "Lannister"%>
  <img id="stark_img" src="<%= character.img_url %>">
</div>
<div class= "targaryen">
  <% elsif character.house.name === "Targaryen"%>
  <img id="stark_img" src="<%= character.img_url %>">
</div>
  <% end %>
  <% end %>
</div>
