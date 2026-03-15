-- Verify: schemas/agent_db_users_public/tables/users/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_users_public.users', 'delete', 'authenticated');


