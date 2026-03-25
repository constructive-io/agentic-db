-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/ingested_at/column


ALTER TABLE "agentic_db_app_public".raw_contact_emails 
  DROP COLUMN ingested_at RESTRICT;


