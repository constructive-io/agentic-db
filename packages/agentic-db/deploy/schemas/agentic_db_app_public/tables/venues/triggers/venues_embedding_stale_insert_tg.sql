-- Deploy: schemas/agentic_db_app_public/tables/venues/triggers/venues_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table


CREATE TRIGGER venues_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".venues
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".venues_embedding_stale ( );

