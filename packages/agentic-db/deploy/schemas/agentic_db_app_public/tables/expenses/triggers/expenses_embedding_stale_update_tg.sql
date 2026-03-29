-- Deploy: schemas/agentic_db_app_public/tables/expenses/triggers/expenses_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_private/trigger_fns/expenses_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE TRIGGER expenses_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.expenses
FOR EACH ROW
WHEN (OLD.description IS DISTINCT FROM NEW.description OR OLD.notes IS DISTINCT FROM NEW.notes)
EXECUTE PROCEDURE agentic_db_private.expenses_embedding_stale ( );

