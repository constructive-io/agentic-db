-- Revert: schemas/agent_db_app_public/tables/habits/columns/id/column


ALTER TABLE "agent_db_app_public".habits 
  DROP COLUMN id RESTRICT;


