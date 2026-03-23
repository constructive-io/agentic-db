-- Deploy: schemas/agentic_db_app_public/tables/interactions/triggers/interactions_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_private/trigger_fns/interactions_enqueue_chunking
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER interactions_enqueue_chunking_insert_tg
AFTER INSERT ON "agentic_db_app_public".interactions
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".interactions_enqueue_chunking ( );

