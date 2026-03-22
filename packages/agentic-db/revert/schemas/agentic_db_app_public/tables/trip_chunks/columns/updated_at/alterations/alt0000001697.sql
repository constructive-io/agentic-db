-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/updated_at/alterations/alt0000001697




ALTER TABLE "agentic_db_app_public".trip_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



