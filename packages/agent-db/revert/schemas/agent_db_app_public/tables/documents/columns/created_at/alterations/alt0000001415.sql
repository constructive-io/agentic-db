-- Revert: schemas/agent_db_app_public/tables/documents/columns/created_at/alterations/alt0000001415




ALTER TABLE agent_db_app_public.documents 
    ALTER COLUMN created_at DROP DEFAULT;



