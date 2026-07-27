-- Deploy: schemas/agentic_db_app_public/tables/contacts/triggers/contacts_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_private/trigger_fns/contacts_enqueue_embedding


CREATE TRIGGER contacts_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.contacts
FOR EACH ROW
WHEN (NEW.embedding_updated_at IS NULL)
EXECUTE PROCEDURE agentic_db_app_private.contacts_enqueue_embedding ( );

