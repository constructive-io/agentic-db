-- Revert: schemas/agentic_db_app_public/tables/message_chunks/triggers/message_chunks_enqueue_embedding_insert_tg


DROP TRIGGER message_chunks_enqueue_embedding_insert_tg ON "agentic_db_app_public".message_chunks;


