-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/triggers/interaction_chunks_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_private/trigger_fns/interaction_chunks_embedding_stale
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER interaction_chunks_embedding_stale_update_tg
BEFORE UPDATE ON "agentic_db_app_public".interaction_chunks
FOR EACH ROW
WHEN (OLD.embedding_text IS DISTINCT FROM NEW.embedding_text)
EXECUTE PROCEDURE "agentic_db_private".interaction_chunks_embedding_stale ( );

