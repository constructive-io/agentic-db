-- Verify: schemas/agentic_db_app_public/tables/skills/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.skills', 'insert', 'authenticated');


