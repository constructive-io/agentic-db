-- Deploy: schemas/agentic_db_app_public/tables/interactions/triggers/interactions_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table


CREATE TRIGGER interactions_enqueue_chunking_insert_tg
AFTER INSERT ON "agentic_db_app_public".interactions
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".interactions_enqueue_chunking ( );

