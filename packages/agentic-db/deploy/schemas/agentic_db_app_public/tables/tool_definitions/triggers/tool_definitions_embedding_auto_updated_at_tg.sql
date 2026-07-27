-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/triggers/tool_definitions_embedding_auto_updated_at_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_private/trigger_fns/tool_definitions_embedding_auto_updated_at


CREATE TRIGGER tool_definitions_embedding_auto_updated_at_tg
BEFORE UPDATE ON agentic_db_app_public.tool_definitions
FOR EACH ROW
WHEN (OLD.embedding IS DISTINCT FROM NEW.embedding)
EXECUTE PROCEDURE agentic_db_app_private.tool_definitions_embedding_auto_updated_at ( );

