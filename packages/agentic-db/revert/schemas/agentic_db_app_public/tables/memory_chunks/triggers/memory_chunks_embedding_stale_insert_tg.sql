-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/triggers/memory_chunks_embedding_stale_insert_tg


DROP TRIGGER memory_chunks_embedding_stale_insert_tg ON "agentic_db_app_public".memory_chunks;


