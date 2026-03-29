-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/tool_definitions_id/column


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  DROP COLUMN tool_definitions_id RESTRICT;


