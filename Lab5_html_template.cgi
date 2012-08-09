<div>
   <h1>Lab 5 Example Output</h1>
   <% def humanize(string)
      string.gsub('_',' ').ucwords
      end
   %>
<button>Toggle Source/Output</button>
<br />
<br />
   <div id="example-output">
<table style="border: solid 1px gray;">
   <tr>
   <% @fields.each do |f| %>
   <% if(@sort_by.to_s == f.to_s && @order.to_s == 'normal')
        @th_order = 'reverse'
      else
        @th_order = 'normal'
      end
   %>
         
   <% bgclass = (f.to_s == @sort_by ? ' class="th-selected" ': '') %>
   <th><%= humanize(f.to_s)%></th>
   <% end %>
   </tr>
   <% @students_array.each do |student| %>
   <tr>
      <% @fields.each do |f| %><% css = f.to_s == @sort_by ? 'highlight' : '' %> 
      <td class="<%= css %>"> <%= student.send(f) %> </td>
      <% end %>
   </tr>
   <% end %>
</table>

<%= @for_template %>
<hr />
    </div>
<%= @source_code %>
</div>