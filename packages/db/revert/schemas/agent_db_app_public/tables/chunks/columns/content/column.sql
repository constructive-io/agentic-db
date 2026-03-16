-- Revert: schemas/agent_db_app_public/tables/chunks/columns/content/column


ALTER TABLE "agent_db_app_public".chunks 
  DROP COLUMN content RESTRICT;


