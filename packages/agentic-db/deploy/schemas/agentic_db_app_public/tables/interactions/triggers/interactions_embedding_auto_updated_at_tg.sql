-- Deploy: schemas/agentic_db_app_public/tables/interactions/triggers/interactions_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_private/trigger_fns/interactions_embedding_auto_updated_at


CREATE TRIGGER interactions_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.interactions
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.interactions_embedding_auto_updated_at ( );

