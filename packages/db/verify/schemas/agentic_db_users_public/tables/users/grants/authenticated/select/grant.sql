-- Verify: schemas/agentic_db_users_public/tables/users/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_users_public.users', 'select', 'authenticated');


