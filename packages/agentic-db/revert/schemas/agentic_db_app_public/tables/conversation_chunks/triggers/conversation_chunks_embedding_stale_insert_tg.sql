-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/triggers/conversation_chunks_embedding_stale_insert_tg


DROP TRIGGER conversation_chunks_embedding_stale_insert_tg ON "agentic_db_app_public".conversation_chunks;


