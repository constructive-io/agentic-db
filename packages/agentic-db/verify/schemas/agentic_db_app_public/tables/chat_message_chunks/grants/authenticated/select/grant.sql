-- Verify: schemas/agentic_db_app_public/tables/chat_message_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.chat_message_chunks', 'select', 'authenticated');


