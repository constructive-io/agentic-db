-- Verify: schemas/agentic_db_app_public/tables/skills_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.skills_chunks', 'delete', 'authenticated');


