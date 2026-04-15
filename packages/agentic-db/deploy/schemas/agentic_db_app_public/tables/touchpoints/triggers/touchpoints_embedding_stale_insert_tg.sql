-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/triggers/touchpoints_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table


CREATE TRIGGER touchpoints_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".touchpoints
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".touchpoints_embedding_stale ( );

