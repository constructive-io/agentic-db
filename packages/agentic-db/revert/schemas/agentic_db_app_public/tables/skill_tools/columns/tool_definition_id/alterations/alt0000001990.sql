-- Revert: schemas/agentic_db_app_public/tables/skill_tools/columns/tool_definition_id/alterations/alt0000001990


ALTER TABLE "agentic_db_app_public".skill_tools 
  ALTER COLUMN tool_definition_id DROP NOT NULL;


