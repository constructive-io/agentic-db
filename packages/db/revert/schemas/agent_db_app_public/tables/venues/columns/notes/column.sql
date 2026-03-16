-- Revert: schemas/agent_db_app_public/tables/venues/columns/notes/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN notes RESTRICT;


