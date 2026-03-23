-- Deploy: schemas/agentic_db_app_public/tables/contacts/triggers/contacts_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_private/trigger_fns/contacts_enqueue_chunking
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER contacts_enqueue_chunking_update_tg
AFTER UPDATE ON agentic_db_app_public.contacts
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.contacts_enqueue_chunking ( );

