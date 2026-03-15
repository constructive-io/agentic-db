-- Revert: schemas/agent_db_app_public/tables/ideas/columns/status/column


ALTER TABLE "agent_db_app_public".ideas 
  DROP COLUMN status RESTRICT;


