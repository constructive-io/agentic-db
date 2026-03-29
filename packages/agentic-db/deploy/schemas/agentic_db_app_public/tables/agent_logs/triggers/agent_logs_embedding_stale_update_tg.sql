-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/triggers/agent_logs_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_private/trigger_fns/agent_logs_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE TRIGGER agent_logs_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.agent_logs
FOR EACH ROW
WHEN (OLD.message IS DISTINCT FROM NEW.message)
EXECUTE PROCEDURE agentic_db_private.agent_logs_embedding_stale ( );

