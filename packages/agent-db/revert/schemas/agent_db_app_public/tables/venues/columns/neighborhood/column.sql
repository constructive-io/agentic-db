-- Revert: schemas/agent_db_app_public/tables/venues/columns/neighborhood/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN neighborhood RESTRICT;


