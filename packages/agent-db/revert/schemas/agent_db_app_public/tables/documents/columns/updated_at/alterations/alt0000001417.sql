-- Revert: schemas/agent_db_app_public/tables/documents/columns/updated_at/alterations/alt0000001417




ALTER TABLE agent_db_app_public.documents 
    ALTER COLUMN updated_at DROP DEFAULT;



