-- Verify: schemas/agentic_db_app_public/tables/chat_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.chat_chunks', 'insert', 'authenticated');


