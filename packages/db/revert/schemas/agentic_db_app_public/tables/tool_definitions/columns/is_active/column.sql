-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/is_active/column


ALTER TABLE "agentic_db_app_public".tool_definitions 
  DROP COLUMN is_active RESTRICT;


