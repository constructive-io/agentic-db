-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/created_at/alterations/alt0000000781




ALTER TABLE agentic_db_app_public.touchpoints 
    ALTER COLUMN created_at DROP DEFAULT;



