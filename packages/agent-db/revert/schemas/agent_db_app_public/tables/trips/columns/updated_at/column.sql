-- Revert: schemas/agent_db_app_public/tables/trips/columns/updated_at/column


ALTER TABLE "agent_db_app_public".trips 
  DROP COLUMN updated_at RESTRICT;


