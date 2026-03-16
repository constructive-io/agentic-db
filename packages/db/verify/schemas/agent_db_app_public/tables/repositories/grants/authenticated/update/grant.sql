-- Verify: schemas/agent_db_app_public/tables/repositories/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.repositories', 'update', 'authenticated');


