-- Verify: schemas/agent_db_app_public/tables/projects/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.projects', 'insert', 'authenticated');


