-- Verify: schemas/agent_db_app_public/tables/projects/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.projects', 'update', 'authenticated');


