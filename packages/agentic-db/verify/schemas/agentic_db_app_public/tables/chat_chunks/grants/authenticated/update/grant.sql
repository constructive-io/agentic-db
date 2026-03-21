-- Verify: schemas/agentic_db_app_public/tables/chat_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.chat_chunks', 'update', 'authenticated');


