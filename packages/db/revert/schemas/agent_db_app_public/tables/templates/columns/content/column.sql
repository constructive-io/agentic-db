-- Revert: schemas/agent_db_app_public/tables/templates/columns/content/column


ALTER TABLE "agent_db_app_public".templates 
  DROP COLUMN content RESTRICT;


