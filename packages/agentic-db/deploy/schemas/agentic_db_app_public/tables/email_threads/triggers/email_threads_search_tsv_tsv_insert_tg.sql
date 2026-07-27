-- Deploy: schemas/agentic_db_app_public/tables/email_threads/triggers/email_threads_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_private/trigger_fns/email_threads_search_tsv_tsv


CREATE TRIGGER email_threads_search_tsv_tsv_insert_tg
BEFORE INSERT ON agentic_db_app_public.email_threads
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_app_private.email_threads_search_tsv_tsv ( );

