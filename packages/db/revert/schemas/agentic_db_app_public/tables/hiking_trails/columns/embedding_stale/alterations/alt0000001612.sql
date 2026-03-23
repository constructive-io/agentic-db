-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_stale/alterations/alt0000001612


ALTER TABLE "agentic_db_app_public".hiking_trails 
  ALTER COLUMN embedding_stale DROP NOT NULL;


