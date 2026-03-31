-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  DROP COLUMN embedding_stale RESTRICT;


