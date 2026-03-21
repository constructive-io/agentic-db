-- Verify: schemas/agentic_db_app_public/tables/idea_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.idea_chunks', 'update', 'authenticated');


