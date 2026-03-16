-- Revert: schemas/agent_db_app_public/tables/trips/columns/embedding/column


ALTER TABLE "agent_db_app_public".trips 
  DROP COLUMN embedding RESTRICT;


