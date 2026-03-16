-- Revert: schemas/agent_db_app_public/tables/skills/columns/requirements/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN requirements RESTRICT;


