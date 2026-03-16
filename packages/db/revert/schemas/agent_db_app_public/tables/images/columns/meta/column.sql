-- Revert: schemas/agent_db_app_public/tables/images/columns/meta/column


ALTER TABLE "agent_db_app_public".images 
  DROP COLUMN meta RESTRICT;


