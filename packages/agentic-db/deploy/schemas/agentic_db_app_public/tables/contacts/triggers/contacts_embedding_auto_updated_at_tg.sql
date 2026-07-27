-- Deploy: schemas/agentic_db_app_public/tables/contacts/triggers/contacts_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_private/trigger_fns/contacts_embedding_auto_updated_at


CREATE TRIGGER contacts_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.contacts
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.contacts_embedding_auto_updated_at ( );

