-- Verify: schemas/agent_db_app_public/tables/chat_messages/indexes/chat_messages_role_idx


SELECT verify_index('agent_db_app_public.chat_messages', 'chat_messages_role_idx');


