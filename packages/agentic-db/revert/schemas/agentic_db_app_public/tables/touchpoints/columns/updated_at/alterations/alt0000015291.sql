-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/updated_at/alterations/alt0000015291




ALTER TABLE agentic_db_app_public.touchpoints 
    ALTER COLUMN updated_at DROP DEFAULT;



