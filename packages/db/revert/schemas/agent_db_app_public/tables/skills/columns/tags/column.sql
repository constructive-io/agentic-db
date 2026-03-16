-- Revert: schemas/agent_db_app_public/tables/skills/columns/tags/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN tags RESTRICT;


