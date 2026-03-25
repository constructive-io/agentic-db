-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/updated_at/alterations/alt0000001734


ALTER TABLE "agentic_db_app_public".hiking_trails_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


