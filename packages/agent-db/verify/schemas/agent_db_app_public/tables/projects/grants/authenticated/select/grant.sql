-- Verify: schemas/agent_db_app_public/tables/projects/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.projects', 'select', 'authenticated');


