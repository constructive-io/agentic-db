-- Revert: schemas/agentic_db_app_public/tables/trips/columns/updated_at/alterations/alt0000003872




ALTER TABLE agentic_db_app_public.trips 
    ALTER COLUMN updated_at DROP DEFAULT;



