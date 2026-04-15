-- Revert: schemas/agentic_db_app_public/tables/skill_tools/columns/tool_definition_id/column


ALTER TABLE agentic_db_app_public.skill_tools 
  DROP COLUMN tool_definition_id RESTRICT;


