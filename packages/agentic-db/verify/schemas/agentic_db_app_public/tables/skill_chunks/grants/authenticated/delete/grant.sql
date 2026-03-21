-- Verify: schemas/agentic_db_app_public/tables/skill_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.skill_chunks', 'delete', 'authenticated');


