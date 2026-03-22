-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/output_schema/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  DROP COLUMN output_schema RESTRICT;


