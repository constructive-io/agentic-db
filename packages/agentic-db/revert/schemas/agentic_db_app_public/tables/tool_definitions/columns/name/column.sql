-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/name/column


ALTER TABLE "agentic_db_app_public".tool_definitions 
  DROP COLUMN name RESTRICT;


