-- Verify: schemas/agentic_db_app_public/tables/skill_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.skill_chunks', 'insert', 'authenticated');


