-- Verify: schemas/agent_db_app_public/tables/skills/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.skills', 'select', 'authenticated');


