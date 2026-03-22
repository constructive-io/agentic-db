-- Deploy: schemas/agentic_db_app_public/tables/events/triggers/events_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_private/trigger_fns/events_enqueue_embedding
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER events_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.events
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE agentic_db_private.events_enqueue_embedding ( );

