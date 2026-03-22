-- Verify: schemas/agentic_db_app_public/tables/conversation_chunks/indexes/conversation_chunks_entity_id_idx


SELECT verify_index('agentic_db_app_public.conversation_chunks', 'conversation_chunks_entity_id_idx');


