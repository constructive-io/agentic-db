-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/schema/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  DROP COLUMN schema RESTRICT;


