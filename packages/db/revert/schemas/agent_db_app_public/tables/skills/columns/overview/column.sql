-- Revert: schemas/agent_db_app_public/tables/skills/columns/overview/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN overview RESTRICT;


