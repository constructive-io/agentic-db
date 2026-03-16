-- Revert: schemas/agent_db_app_public/tables/ideas/columns/content/column


ALTER TABLE "agent_db_app_public".ideas 
  DROP COLUMN content RESTRICT;


