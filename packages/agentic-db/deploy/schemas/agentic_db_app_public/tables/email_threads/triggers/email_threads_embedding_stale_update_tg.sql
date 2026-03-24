-- Deploy: schemas/agentic_db_app_public/tables/email_threads/triggers/email_threads_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_private/trigger_fns/email_threads_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


CREATE TRIGGER email_threads_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".email_threads
FOR EACH ROW
WHEN (OLD.subject IS DISTINCT FROM NEW.subject OR OLD.summary IS DISTINCT FROM NEW.summary)
EXECUTE PROCEDURE "agentic_db_private".email_threads_embedding_stale ( );

