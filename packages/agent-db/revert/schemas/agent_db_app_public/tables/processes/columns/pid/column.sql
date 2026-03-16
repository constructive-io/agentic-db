-- Revert: schemas/agent_db_app_public/tables/processes/columns/pid/column


ALTER TABLE "agent_db_app_public".processes 
  DROP COLUMN pid RESTRICT;


