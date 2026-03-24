-- Deploy: schemas/agentic_db_app_public/tables/emails/triggers/emails_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_private/trigger_fns/emails_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


CREATE TRIGGER emails_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".emails
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".emails_embedding_stale ( );

