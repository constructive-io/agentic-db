-- Deploy: schemas/agentic_db_app_public/tables/memories/triggers/memories_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_private/trigger_fns/memories_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/memories/columns/embedding_text/column


CREATE TRIGGER memories_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".memories
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".memories_embedding_stale ( );

