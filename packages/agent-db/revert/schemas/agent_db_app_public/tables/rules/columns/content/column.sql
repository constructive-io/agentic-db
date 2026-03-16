-- Revert: schemas/agent_db_app_public/tables/rules/columns/content/column


ALTER TABLE "agent_db_app_public".rules 
  DROP COLUMN content RESTRICT;


