-- Verify: schemas/agentic_db_app_public/tables/messages/indexes/messages_conversation_id_idx


SELECT verify_index('agentic_db_app_public.messages', 'messages_conversation_id_idx');


