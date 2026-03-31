-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/triggers/runtime_states_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_private/trigger_fns/runtime_states_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


CREATE TRIGGER runtime_states_enqueue_chunking_insert_tg
AFTER INSERT ON agentic_db_app_public.runtime_states
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.runtime_states_enqueue_chunking ( );

