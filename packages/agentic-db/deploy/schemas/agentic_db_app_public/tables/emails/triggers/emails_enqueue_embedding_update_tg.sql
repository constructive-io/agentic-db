-- Deploy: schemas/agentic_db_app_public/tables/emails/triggers/emails_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


CREATE TRIGGER emails_enqueue_embedding_update_tg
AFTER UPDATE ON "agentic_db_app_public".emails
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".emails_enqueue_embedding ( );

