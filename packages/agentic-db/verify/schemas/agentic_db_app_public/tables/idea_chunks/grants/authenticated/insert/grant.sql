-- Verify: schemas/agentic_db_app_public/tables/idea_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.idea_chunks', 'insert', 'authenticated');


