-- Deploy: schemas/agentic_db_app_public/tables/venues/triggers/venues_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_private/trigger_fns/venues_enqueue_chunking
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER venues_enqueue_chunking_update_tg
AFTER UPDATE ON agentic_db_app_public.venues
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.venues_enqueue_chunking ( );

