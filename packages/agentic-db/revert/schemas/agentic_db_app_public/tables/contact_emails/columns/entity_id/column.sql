-- Revert: schemas/agentic_db_app_public/tables/contact_emails/columns/entity_id/column


ALTER TABLE agentic_db_app_public.contact_emails 
  DROP COLUMN entity_id RESTRICT;


