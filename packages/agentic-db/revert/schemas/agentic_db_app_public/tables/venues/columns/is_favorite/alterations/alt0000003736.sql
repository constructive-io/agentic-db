-- Revert: schemas/agentic_db_app_public/tables/venues/columns/is_favorite/alterations/alt0000003736




ALTER TABLE agentic_db_app_public.venues 
    ALTER COLUMN is_favorite DROP DEFAULT;



