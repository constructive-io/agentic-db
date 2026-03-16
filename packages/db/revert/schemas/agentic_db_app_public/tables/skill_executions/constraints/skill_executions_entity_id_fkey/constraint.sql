-- Revert: schemas/agentic_db_app_public/tables/skill_executions/constraints/skill_executions_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".skill_executions 
  DROP CONSTRAINT skill_executions_entity_id_fkey;


