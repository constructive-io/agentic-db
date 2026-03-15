-- Revert: schemas/agent_db_app_public/tables/documents/columns/is_read/alterations/alt0000001419




ALTER TABLE agent_db_app_public.documents 
    ALTER COLUMN is_read DROP DEFAULT;



