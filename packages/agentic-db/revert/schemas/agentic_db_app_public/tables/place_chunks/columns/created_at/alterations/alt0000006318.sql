-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/created_at/alterations/alt0000006318




ALTER TABLE agentic_db_app_public.place_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



