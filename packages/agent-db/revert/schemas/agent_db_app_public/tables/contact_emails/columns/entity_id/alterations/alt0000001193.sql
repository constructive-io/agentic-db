-- Revert: schemas/agent_db_app_public/tables/contact_emails/columns/entity_id/alterations/alt0000001193


ALTER TABLE agent_db_app_public.contact_emails 
  ALTER COLUMN entity_id DROP NOT NULL;


