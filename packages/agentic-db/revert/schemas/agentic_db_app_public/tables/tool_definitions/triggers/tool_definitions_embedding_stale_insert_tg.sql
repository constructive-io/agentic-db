-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/triggers/tool_definitions_embedding_stale_insert_tg


DROP TRIGGER tool_definitions_embedding_stale_insert_tg ON "agentic_db_app_public".tool_definitions;


