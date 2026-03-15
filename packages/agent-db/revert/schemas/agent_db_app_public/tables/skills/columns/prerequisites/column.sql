-- Revert: schemas/agent_db_app_public/tables/skills/columns/prerequisites/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN prerequisites RESTRICT;


