-- Revert: schemas/agent_db_app_public/tables/trips/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".trips 
  DROP COLUMN embedding_text RESTRICT;


