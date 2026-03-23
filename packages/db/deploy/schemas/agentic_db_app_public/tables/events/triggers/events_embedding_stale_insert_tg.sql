-- Deploy: schemas/agentic_db_app_public/tables/events/triggers/events_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_private/trigger_fns/events_embedding_stale
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER events_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".events
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".events_embedding_stale ( );

