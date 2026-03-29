-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  DROP COLUMN created_at RESTRICT;


