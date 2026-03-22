-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/content/alterations/alt0000001699


ALTER TABLE "agentic_db_app_public".trip_chunks 
  ALTER COLUMN content DROP NOT NULL;


