-- Verify: schemas/agentic_db_app_public/tables/chat_messages/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.chat_messages', 'delete', 'authenticated');


