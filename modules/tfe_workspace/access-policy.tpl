%{ for key, value in access_policy }
${key} = ${value}
%{ endfor ~ }
