-- Verify: schemas/agent_db_app_public/tables/chat_messages/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.chat_messages', 'update', 'authenticated');


