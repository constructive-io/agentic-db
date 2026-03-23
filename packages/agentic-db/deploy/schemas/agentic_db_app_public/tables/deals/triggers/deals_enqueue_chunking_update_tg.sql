-- Deploy: schemas/agentic_db_app_public/tables/deals/triggers/deals_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_private/trigger_fns/deals_enqueue_chunking
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER deals_enqueue_chunking_update_tg
AFTER UPDATE ON "agentic_db_app_public".deals
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".deals_enqueue_chunking ( );

