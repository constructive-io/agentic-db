-- Deploy: schemas/agentic_db_app_public/tables/emails/triggers/emails_search_tsv_tsv_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_private/trigger_fns/emails_search_tsv_tsv
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


CREATE TRIGGER emails_search_tsv_tsv_update_tg
BEFORE UPDATE ON agentic_db_app_public.emails
FOR EACH ROW
WHEN (OLD.subject IS DISTINCT FROM NEW.subject OR OLD.body_text IS DISTINCT FROM NEW.body_text)
EXECUTE PROCEDURE agentic_db_private.emails_search_tsv_tsv ( );

