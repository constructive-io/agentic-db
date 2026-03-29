-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/tool_definition_id/column


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  DROP COLUMN tool_definition_id RESTRICT;


