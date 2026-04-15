-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/triggers/touchpoints_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table


CREATE TRIGGER touchpoints_enqueue_embedding_insert_tg
AFTER INSERT ON "agentic_db_app_public".touchpoints
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".touchpoints_enqueue_embedding ( );

