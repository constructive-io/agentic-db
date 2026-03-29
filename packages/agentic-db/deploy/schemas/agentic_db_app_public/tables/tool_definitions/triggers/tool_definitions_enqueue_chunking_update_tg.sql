-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/triggers/tool_definitions_enqueue_chunking_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_private/trigger_fns/tool_definitions_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER tool_definitions_enqueue_chunking_update_tg
AFTER UPDATE ON agentic_db_app_public.tool_definitions
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.tool_definitions_enqueue_chunking ( );

