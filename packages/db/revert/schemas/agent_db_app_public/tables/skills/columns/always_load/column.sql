-- Revert: schemas/agent_db_app_public/tables/skills/columns/always_load/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN always_load RESTRICT;


