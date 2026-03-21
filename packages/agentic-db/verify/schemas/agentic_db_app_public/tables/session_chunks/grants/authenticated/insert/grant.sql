-- Verify: schemas/agentic_db_app_public/tables/session_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.session_chunks', 'insert', 'authenticated');


