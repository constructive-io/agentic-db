-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/metadata/column


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  DROP COLUMN metadata RESTRICT;


