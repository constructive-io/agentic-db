-- Revert: schemas/agent_db_app_public/tables/skills/columns/embedding/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN embedding RESTRICT;


