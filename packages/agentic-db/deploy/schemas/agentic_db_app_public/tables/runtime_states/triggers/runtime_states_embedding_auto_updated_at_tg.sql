-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/triggers/runtime_states_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_private/trigger_fns/runtime_states_embedding_auto_updated_at


CREATE TRIGGER runtime_states_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.runtime_states
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.runtime_states_embedding_auto_updated_at ( );

