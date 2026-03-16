-- Revert: schemas/agent_db_app_public/tables/venues/columns/updated_at/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN updated_at RESTRICT;


