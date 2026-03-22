-- Revert: schemas/agentic_db_app_public/tables/note_chunks/triggers/note_chunks_embedding_stale_insert_tg


DROP TRIGGER note_chunks_embedding_stale_insert_tg ON "agentic_db_app_public".note_chunks;


