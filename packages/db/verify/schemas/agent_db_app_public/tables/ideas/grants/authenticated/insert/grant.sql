-- Verify: schemas/agent_db_app_public/tables/ideas/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.ideas', 'insert', 'authenticated');


