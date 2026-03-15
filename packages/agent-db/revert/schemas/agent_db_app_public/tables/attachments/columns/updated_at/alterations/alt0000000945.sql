-- Revert: schemas/agent_db_app_public/tables/attachments/columns/updated_at/alterations/alt0000000945




ALTER TABLE agent_db_app_public.attachments 
    ALTER COLUMN updated_at DROP DEFAULT;



