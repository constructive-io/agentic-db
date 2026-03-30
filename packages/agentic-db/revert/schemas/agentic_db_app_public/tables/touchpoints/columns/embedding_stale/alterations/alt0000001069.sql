-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/embedding_stale/alterations/alt0000001069


ALTER TABLE "agentic_db_app_public".touchpoints 
  ALTER COLUMN embedding_stale DROP NOT NULL;


