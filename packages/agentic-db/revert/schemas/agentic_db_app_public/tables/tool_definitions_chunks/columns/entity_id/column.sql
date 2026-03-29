-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  DROP COLUMN entity_id RESTRICT;


