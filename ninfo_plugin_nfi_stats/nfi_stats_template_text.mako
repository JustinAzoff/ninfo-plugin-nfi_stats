Seen in ${hits} out of ${total} days.

%for db, num in databases:
%if num:
 * ${db} ${num}/${plugin_config['slots']}
%endif
%endfor
