-- Revert: schemas/agent_db_app_public/tables/venues/columns/created_at/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN created_at RESTRICT;


