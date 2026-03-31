-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/tool_type/column


ALTER TABLE "agentic_db_app_public".tool_definitions 
  DROP COLUMN tool_type RESTRICT;


