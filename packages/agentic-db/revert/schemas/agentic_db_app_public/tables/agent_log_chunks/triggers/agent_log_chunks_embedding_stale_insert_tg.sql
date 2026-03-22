-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/triggers/agent_log_chunks_embedding_stale_insert_tg


DROP TRIGGER agent_log_chunks_embedding_stale_insert_tg ON "agentic_db_app_public".agent_log_chunks;


