-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/created_at/alterations/alt0000005478




ALTER TABLE agentic_db_app_public.agents_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



