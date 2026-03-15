-- Revert: schemas/agent_db_app_public/tables/notes/columns/updated_at/alterations/alt0000000912




ALTER TABLE agent_db_app_public.notes 
    ALTER COLUMN updated_at DROP DEFAULT;



