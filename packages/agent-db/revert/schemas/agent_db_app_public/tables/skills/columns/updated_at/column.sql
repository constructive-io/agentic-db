-- Revert: schemas/agent_db_app_public/tables/skills/columns/updated_at/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN updated_at RESTRICT;


