-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/triggers/runtime_states_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_private/trigger_fns/runtime_states_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


CREATE TRIGGER runtime_states_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.runtime_states
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.state_type IS DISTINCT FROM NEW.state_type)
EXECUTE PROCEDURE agentic_db_private.runtime_states_embedding_stale ( );

