-- Deploy: schemas/agentic_db_app_public/tables/emails/triggers/emails_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_private/trigger_fns/emails_embedding_stale


CREATE TRIGGER emails_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.emails
FOR EACH ROW
WHEN (OLD.subject IS DISTINCT FROM NEW.subject OR OLD.body_text IS DISTINCT FROM NEW.body_text)
EXECUTE PROCEDURE agentic_db_app_private.emails_embedding_stale ( );

