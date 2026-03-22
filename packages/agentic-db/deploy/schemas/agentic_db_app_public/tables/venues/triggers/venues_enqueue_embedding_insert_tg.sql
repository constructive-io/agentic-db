-- Deploy: schemas/agentic_db_app_public/tables/venues/triggers/venues_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_private/trigger_fns/venues_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/venues/columns/main_image_id/column


CREATE TRIGGER venues_enqueue_embedding_insert_tg
AFTER INSERT ON "agentic_db_app_public".venues
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".venues_enqueue_embedding ( );

