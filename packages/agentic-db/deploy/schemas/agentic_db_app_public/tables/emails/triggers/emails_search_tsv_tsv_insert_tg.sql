-- Deploy: schemas/agentic_db_app_public/tables/emails/triggers/emails_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_private/trigger_fns/emails_search_tsv_tsv


CREATE TRIGGER emails_search_tsv_tsv_insert_tg
BEFORE INSERT ON agentic_db_app_public.emails
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_app_private.emails_search_tsv_tsv ( );

