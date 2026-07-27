-- Deploy: schemas/agentic_db_app_public/tables/email_threads/triggers/email_threads_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_private/trigger_fns/email_threads_enqueue_embedding


CREATE TRIGGER email_threads_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.email_threads
FOR EACH ROW
WHEN (NEW.embedding_updated_at IS NULL)
EXECUTE PROCEDURE agentic_db_app_private.email_threads_enqueue_embedding ( );

