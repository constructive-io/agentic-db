-- Deploy: schemas/agentic_db_app_public/tables/email_threads/triggers/email_threads_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_private/trigger_fns/email_threads_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


CREATE TRIGGER email_threads_enqueue_chunking_insert_tg
AFTER INSERT ON agentic_db_app_public.email_threads
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.email_threads_enqueue_chunking ( );

