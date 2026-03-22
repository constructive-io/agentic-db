-- Deploy: schemas/agentic_db_app_public/tables/conversations/triggers/conversations_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_private/trigger_fns/conversations_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/embedding_text/column


CREATE TRIGGER conversations_enqueue_embedding_update_tg
AFTER UPDATE ON "agentic_db_app_public".conversations
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".conversations_enqueue_embedding ( );

