-- Revert: schemas/agent_db_app_public/tables/skills/columns/is_active/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN is_active RESTRICT;


