-- Verify: schemas/agent_db_app_public/tables/repositories/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.repositories', 'insert', 'authenticated');


