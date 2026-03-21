-- Verify: schemas/agentic_db_app_public/tables/chat_chunks/indexes/chat_chunks_entity_id_idx


SELECT verify_index('agentic_db_app_public.chat_chunks', 'chat_chunks_entity_id_idx');


