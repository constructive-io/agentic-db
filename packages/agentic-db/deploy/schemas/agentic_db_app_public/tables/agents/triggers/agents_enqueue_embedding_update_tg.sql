-- Deploy: schemas/agentic_db_app_public/tables/agents/triggers/agents_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_private/trigger_fns/agents_enqueue_embedding


CREATE TRIGGER agents_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.agents
FOR EACH ROW
WHEN (NEW.embedding_updated_at IS NULL)
EXECUTE PROCEDURE agentic_db_app_private.agents_enqueue_embedding ( );

