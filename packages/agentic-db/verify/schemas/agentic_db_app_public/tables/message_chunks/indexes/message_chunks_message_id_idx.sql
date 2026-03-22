-- Verify: schemas/agentic_db_app_public/tables/message_chunks/indexes/message_chunks_message_id_idx


SELECT verify_index('agentic_db_app_public.message_chunks', 'message_chunks_message_id_idx');


