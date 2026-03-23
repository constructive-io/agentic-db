-- Deploy: schemas/agentic_db_app_public/tables/codebases/triggers/codebases_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_private/trigger_fns/codebases_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE TRIGGER codebases_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".codebases
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".codebases_embedding_stale ( );

