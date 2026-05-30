UPDATE SomeTable
SET p_key = 'f'
WHERE p_key = 'a';

UPDATE SomeTable
SET p_key = 'a'
WHERE p_key = 'b';

UPDATE SomeTable
SET p_key = 'b'
WHERE p_key = 'f';