-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/triggers/message_chunks_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/message_chunks_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


CREATE TRIGGER message_chunks_enqueue_embedding_insert_tg
AFTER INSERT ON "agentic_db_app_public".message_chunks
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".message_chunks_enqueue_embedding ( );

