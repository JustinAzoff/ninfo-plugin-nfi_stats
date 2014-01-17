<%
    base_url = plugin_config['base_url']
    slots = plugin_config['slots']
%>
<h3>Seen in ${hits} out of ${total} days.</h3>

<ul>
%for db, num in databases:
    %if num:
        <li>
        <a href="${base_url}search?ip=${arg}&dump=1&databases=${db}" title="Dump records for this date">${db}</a>
        ${num} out of ${slots}
        </li>
    %endif
%endfor
</ul>

<a href="${base_url}search?ip=${arg}&dump=1">Dump all records</a>
