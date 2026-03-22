-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/content/alterations/alt0000001738


ALTER TABLE "agentic_db_app_public".hiking_trail_chunks 
  ALTER COLUMN content DROP NOT NULL;


