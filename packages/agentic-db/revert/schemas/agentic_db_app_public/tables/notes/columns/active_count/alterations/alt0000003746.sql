-- Revert: schemas/agentic_db_app_public/tables/notes/columns/active_count/alterations/alt0000003746




ALTER TABLE agentic_db_app_public.notes 
    ALTER COLUMN active_count DROP DEFAULT;



