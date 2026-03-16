-- Revert: schemas/agent_db_app_public/tables/skills/columns/slug/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN slug RESTRICT;


