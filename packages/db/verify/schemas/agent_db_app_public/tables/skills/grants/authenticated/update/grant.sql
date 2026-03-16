-- Verify: schemas/agent_db_app_public/tables/skills/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.skills', 'update', 'authenticated');


