-- Verify: schemas/agentic_db_app_public/tables/chat_message_chunks/indexes/chat_message_chunks_entity_id_idx


SELECT verify_index('agentic_db_app_public.chat_message_chunks', 'chat_message_chunks_entity_id_idx');


