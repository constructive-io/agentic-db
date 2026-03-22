-- Verify: schemas/agentic_db_users_public/tables/users/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_users_public.users', 'insert', 'authenticated');


