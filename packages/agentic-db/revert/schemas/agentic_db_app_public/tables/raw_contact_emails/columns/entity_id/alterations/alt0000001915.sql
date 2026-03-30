-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/entity_id/alterations/alt0000001915


ALTER TABLE "agentic_db_app_public".raw_contact_emails 
  ALTER COLUMN entity_id DROP NOT NULL;


