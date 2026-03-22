-- Verify: schemas/agentic_db_app_public/tables/skill_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.skill_chunks', 'select', 'authenticated');


