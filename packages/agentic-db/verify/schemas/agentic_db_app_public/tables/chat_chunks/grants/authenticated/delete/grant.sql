-- Verify: schemas/agentic_db_app_public/tables/chat_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.chat_chunks', 'delete', 'authenticated');


