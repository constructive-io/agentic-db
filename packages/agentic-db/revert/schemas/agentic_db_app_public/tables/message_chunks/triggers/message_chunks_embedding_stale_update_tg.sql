-- Revert: schemas/agentic_db_app_public/tables/message_chunks/triggers/message_chunks_embedding_stale_update_tg


DROP TRIGGER message_chunks_embedding_stale_update_tg ON "agentic_db_app_public".message_chunks;


