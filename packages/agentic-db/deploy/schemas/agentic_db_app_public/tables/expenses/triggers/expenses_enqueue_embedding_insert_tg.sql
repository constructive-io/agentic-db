-- Deploy: schemas/agentic_db_app_public/tables/expenses/triggers/expenses_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_private/trigger_fns/expenses_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE TRIGGER expenses_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.expenses
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.expenses_enqueue_embedding ( );

