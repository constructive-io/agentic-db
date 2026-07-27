-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/triggers/contacts_chunks_search_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_app_private/trigger_fns/contacts_chunks_search_tsv


CREATE TRIGGER contacts_chunks_search_tsv_insert_tg
BEFORE INSERT ON agentic_db_app_public.contacts_chunks
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_app_private.contacts_chunks_search_tsv ( );

