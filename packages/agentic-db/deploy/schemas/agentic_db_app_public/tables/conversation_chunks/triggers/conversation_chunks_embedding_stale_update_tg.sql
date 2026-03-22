-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/triggers/conversation_chunks_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_private/trigger_fns/conversation_chunks_embedding_stale


CREATE TRIGGER conversation_chunks_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".conversation_chunks
FOR EACH ROW
WHEN (OLD.embedding_text IS DISTINCT FROM NEW.embedding_text)
EXECUTE PROCEDURE "agentic_db_private".conversation_chunks_embedding_stale ( );

