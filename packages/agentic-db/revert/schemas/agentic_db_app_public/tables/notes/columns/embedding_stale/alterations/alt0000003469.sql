-- Revert: schemas/agentic_db_app_public/tables/notes/columns/embedding_stale/alterations/alt0000003469




ALTER TABLE agentic_db_app_public.notes 
    ALTER COLUMN embedding_stale DROP DEFAULT;



