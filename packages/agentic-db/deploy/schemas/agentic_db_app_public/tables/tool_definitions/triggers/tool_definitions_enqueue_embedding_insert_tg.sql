-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/triggers/tool_definitions_enqueue_embedding_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_private/trigger_fns/tool_definitions_enqueue_embedding


CREATE TRIGGER tool_definitions_enqueue_embedding_insert_tg
AFTER INSERT ON agentic_db_app_public.tool_definitions
FOR EACH ROW
WHEN (NEW.embedding_updated_at IS NULL)
EXECUTE PROCEDURE agentic_db_app_private.tool_definitions_enqueue_embedding ( );

