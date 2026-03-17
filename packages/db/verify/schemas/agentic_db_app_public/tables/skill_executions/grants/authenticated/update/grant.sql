-- Verify: schemas/agentic_db_app_public/tables/skill_executions/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.skill_executions', 'update', 'authenticated');


