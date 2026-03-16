-- Revert: schemas/agent_db_app_public/tables/skills/columns/content/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN content RESTRICT;


