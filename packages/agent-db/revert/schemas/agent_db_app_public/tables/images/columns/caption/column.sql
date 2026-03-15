-- Revert: schemas/agent_db_app_public/tables/images/columns/caption/column


ALTER TABLE "agent_db_app_public".images 
  DROP COLUMN caption RESTRICT;


