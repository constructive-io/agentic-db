-- Revert: schemas/agent_db_app_public/tables/contact_emails/constraints/contact_emails_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.contact_emails 
  DROP CONSTRAINT contact_emails_entity_id_fkey;


