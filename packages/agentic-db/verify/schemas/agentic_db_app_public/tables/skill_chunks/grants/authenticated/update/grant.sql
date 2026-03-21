-- Verify: schemas/agentic_db_app_public/tables/skill_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.skill_chunks', 'update', 'authenticated');


