-- Deploy: schemas/agentic_db_app_public/tables/tasks/triggers/tasks_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER tasks_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".tasks
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".tasks_embedding_stale ( );

