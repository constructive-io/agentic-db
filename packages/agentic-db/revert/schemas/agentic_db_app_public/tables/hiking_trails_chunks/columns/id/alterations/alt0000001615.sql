-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/id/alterations/alt0000001615


ALTER TABLE "agentic_db_app_public".hiking_trails_chunks 
  ALTER COLUMN id DROP NOT NULL;


