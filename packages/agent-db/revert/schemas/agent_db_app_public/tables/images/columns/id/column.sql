-- Revert: schemas/agent_db_app_public/tables/images/columns/id/column


ALTER TABLE "agent_db_app_public".images 
  DROP COLUMN id RESTRICT;


