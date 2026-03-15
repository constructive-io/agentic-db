-- Revert: schemas/agent_db_app_public/tables/contact_phones/columns/created_at/alterations/alt0000001206




ALTER TABLE agent_db_app_public.contact_phones 
    ALTER COLUMN created_at DROP DEFAULT;



