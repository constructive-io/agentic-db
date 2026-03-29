-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/entity_id/column


ALTER TABLE agentic_db_app_public.email_attachments 
  DROP COLUMN entity_id RESTRICT;


