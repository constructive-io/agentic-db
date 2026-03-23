-- Verify: schemas/agentic_db_app_public/tables/conversations_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.conversations_chunks', 'insert', 'authenticated');


