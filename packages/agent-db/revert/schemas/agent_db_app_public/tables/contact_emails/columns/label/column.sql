-- Revert: schemas/agent_db_app_public/tables/contact_emails/columns/label/column


ALTER TABLE agent_db_app_public.contact_emails 
  DROP COLUMN label RESTRICT;


