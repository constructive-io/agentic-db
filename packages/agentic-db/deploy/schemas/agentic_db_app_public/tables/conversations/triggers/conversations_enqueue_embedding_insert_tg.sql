-- Deploy: schemas/agentic_db_app_public/tables/conversations/triggers/conversations_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_private/trigger_fns/conversations_enqueue_embedding


CREATE TRIGGER conversations_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.conversations
FOR EACH ROW
WHEN (NEW.embedding_updated_at IS NULL)
EXECUTE PROCEDURE agentic_db_app_private.conversations_enqueue_embedding ( );

