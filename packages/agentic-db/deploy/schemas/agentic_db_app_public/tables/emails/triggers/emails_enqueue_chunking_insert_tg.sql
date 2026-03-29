-- Deploy: schemas/agentic_db_app_public/tables/emails/triggers/emails_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_private/trigger_fns/emails_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


CREATE TRIGGER emails_enqueue_chunking_insert_tg
AFTER INSERT ON agentic_db_app_public.emails
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.emails_enqueue_chunking ( );

