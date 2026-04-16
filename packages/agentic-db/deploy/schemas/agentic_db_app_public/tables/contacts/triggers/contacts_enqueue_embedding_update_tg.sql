-- Deploy: schemas/agentic_db_app_public/tables/contacts/triggers/contacts_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_private/trigger_fns/contacts_enqueue_embedding
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE TRIGGER contacts_enqueue_embedding_update_tg
AFTER UPDATE ON agentic_db_app_public.contacts
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".contacts_enqueue_embedding ( );

