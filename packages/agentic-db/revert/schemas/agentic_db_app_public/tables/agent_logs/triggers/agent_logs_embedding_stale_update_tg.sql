-- Revert: schemas/agentic_db_app_public/tables/agent_logs/triggers/agent_logs_embedding_stale_update_tg


DROP TRIGGER agent_logs_embedding_stale_update_tg ON "agentic_db_app_public".agent_logs;


