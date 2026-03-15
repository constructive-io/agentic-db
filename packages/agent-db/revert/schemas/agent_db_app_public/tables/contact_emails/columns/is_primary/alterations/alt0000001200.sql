-- Revert: schemas/agent_db_app_public/tables/contact_emails/columns/is_primary/alterations/alt0000001200




ALTER TABLE agent_db_app_public.contact_emails 
    ALTER COLUMN is_primary DROP DEFAULT;



