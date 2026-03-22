-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/id/alterations/alt0000002560


ALTER TABLE "agentic_db_app_public".trip_chunks 
  ALTER COLUMN id DROP NOT NULL;


