-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/entity_id/alterations/alt0000001814


ALTER TABLE "agentic_db_app_public".email_attachments 
  ALTER COLUMN entity_id DROP NOT NULL;


