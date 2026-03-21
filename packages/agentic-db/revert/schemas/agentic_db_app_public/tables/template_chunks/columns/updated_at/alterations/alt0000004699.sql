-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/updated_at/alterations/alt0000004699




ALTER TABLE agentic_db_app_public.template_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



