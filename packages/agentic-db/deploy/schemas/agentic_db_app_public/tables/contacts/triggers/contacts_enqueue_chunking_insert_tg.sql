-- Deploy: schemas/agentic_db_app_public/tables/contacts/triggers/contacts_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table


CREATE TRIGGER contacts_enqueue_chunking_insert_tg
AFTER INSERT ON "agentic_db_app_public".contacts
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".contacts_enqueue_chunking ( );

