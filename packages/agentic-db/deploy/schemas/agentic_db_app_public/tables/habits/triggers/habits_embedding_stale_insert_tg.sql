-- Deploy: schemas/agentic_db_app_public/tables/habits/triggers/habits_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_private/trigger_fns/habits_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/habits/columns/embedding_text/column


CREATE TRIGGER habits_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".habits
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".habits_embedding_stale ( );

