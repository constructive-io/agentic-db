-- Deploy: schemas/agentic_db_app_public/tables/habits/triggers/habits_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_private/trigger_fns/habits_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE TRIGGER habits_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".habits
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.description IS DISTINCT FROM NEW.description)
EXECUTE PROCEDURE "agentic_db_private".habits_embedding_stale ( );

