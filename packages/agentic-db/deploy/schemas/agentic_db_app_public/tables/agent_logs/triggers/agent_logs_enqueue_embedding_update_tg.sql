-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/triggers/agent_logs_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_private/trigger_fns/agent_logs_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER agent_logs_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.agent_logs
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".agent_logs_enqueue_embedding ( );

