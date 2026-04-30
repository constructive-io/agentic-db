-- Revert: schemas/agentic_db_app_public/tables/deals/columns/created_at/alterations/alt0000000060




ALTER TABLE agentic_db_app_public.deals 
    ALTER COLUMN created_at DROP DEFAULT;



