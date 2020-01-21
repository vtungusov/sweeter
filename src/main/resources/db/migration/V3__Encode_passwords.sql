CREATE extension if NOT EXISTS pgcrypto;

update usr set password = crypt(password, gen_salt('bf', 8));