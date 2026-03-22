-- Deploy: schemas/agentic_db_app_public/tables/interactions/triggers/interactions_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_private/trigger_fns/interactions_embedding_stale
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER interactions_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.interactions
FOR EACH ROW
WHEN (OLD.summary IS DISTINCT FROM NEW.summary)
EXECUTE PROCEDURE agentic_db_private.interactions_embedding_stale ( );

