-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/updated_at/alterations/alt0000002578




ALTER TABLE "agentic_db_app_public".document_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



