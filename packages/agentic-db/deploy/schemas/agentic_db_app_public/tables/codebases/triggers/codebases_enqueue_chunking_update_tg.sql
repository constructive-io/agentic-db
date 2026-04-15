-- Deploy: schemas/agentic_db_app_public/tables/codebases/triggers/codebases_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE TRIGGER codebases_enqueue_chunking_update_tg
AFTER UPDATE ON "agentic_db_app_public".codebases
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".codebases_enqueue_chunking ( );

