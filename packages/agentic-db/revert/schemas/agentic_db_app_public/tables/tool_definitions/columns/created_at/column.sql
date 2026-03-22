-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/created_at/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  DROP COLUMN created_at RESTRICT;


