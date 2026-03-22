-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/created_at/alterations/alt0000002587




ALTER TABLE agentic_db_app_public.conversations 
    ALTER COLUMN created_at DROP DEFAULT;



