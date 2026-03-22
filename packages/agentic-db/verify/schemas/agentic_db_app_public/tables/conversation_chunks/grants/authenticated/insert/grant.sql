-- Verify: schemas/agentic_db_app_public/tables/conversation_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.conversation_chunks', 'insert', 'authenticated');


