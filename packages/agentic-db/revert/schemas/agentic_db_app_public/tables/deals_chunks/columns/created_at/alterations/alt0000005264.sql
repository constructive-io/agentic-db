-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/created_at/alterations/alt0000005264




ALTER TABLE agentic_db_app_public.deals_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



