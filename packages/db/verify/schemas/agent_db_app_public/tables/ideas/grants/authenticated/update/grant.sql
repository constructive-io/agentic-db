-- Verify: schemas/agent_db_app_public/tables/ideas/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.ideas', 'update', 'authenticated');


