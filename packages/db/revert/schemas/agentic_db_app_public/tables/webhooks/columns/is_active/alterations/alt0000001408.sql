-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000001408




ALTER TABLE "agentic_db_app_public".webhooks 
    ALTER COLUMN is_active DROP DEFAULT;



