-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/created_at/alterations/alt0000004501




ALTER TABLE agentic_db_app_public.webhooks 
    ALTER COLUMN created_at DROP DEFAULT;



