-- Revert: schemas/agentic_db_app_public/tables/emails/constraints/emails_from_contact_id_fkey/constraint


ALTER TABLE agentic_db_app_public.emails 
  DROP CONSTRAINT emails_from_contact_id_fkey;


