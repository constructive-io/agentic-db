-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/created_at/alterations/alt0000004106




ALTER TABLE agentic_db_app_public.sessions 
    ALTER COLUMN created_at DROP DEFAULT;



