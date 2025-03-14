SELECT
id,
UPPER(name) as upper_name,
LOWER(name) as lower_name,
LENGTH(name) as len_name,
concat(id,'_', name) as uinique_identifier,
'*'||name||'-'||id||'*' as barcode --Other way to concatenate
from users;
