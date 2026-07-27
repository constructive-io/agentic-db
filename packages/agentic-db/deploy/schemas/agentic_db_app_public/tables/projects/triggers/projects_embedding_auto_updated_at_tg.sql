-- Deploy: schemas/agentic_db_app_public/tables/projects/triggers/projects_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_private/trigger_fns/projects_embedding_auto_updated_at


CREATE TRIGGER projects_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.projects
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.projects_embedding_auto_updated_at ( );

