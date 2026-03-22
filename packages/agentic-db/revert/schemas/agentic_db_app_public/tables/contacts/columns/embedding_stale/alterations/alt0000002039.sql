-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/embedding_stale/alterations/alt0000002039




ALTER TABLE agentic_db_app_public.contacts 
    ALTER COLUMN embedding_stale DROP DEFAULT;



