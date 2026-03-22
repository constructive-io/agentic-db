-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/updated_at/alterations/alt0000005674




ALTER TABLE agentic_db_app_public.deal_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



