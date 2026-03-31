-- Revert: schemas/agentic_db_app_public/tables/skill_tools/constraints/skill_tools_tool_definition_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".skill_tools 
  DROP CONSTRAINT skill_tools_tool_definition_id_fkey;


