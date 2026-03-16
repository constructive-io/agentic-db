-- Verify: schemas/agent_db_app_public/tables/skills/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.skills', 'delete', 'authenticated');


