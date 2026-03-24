-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".raw_contact_phones 
  DROP COLUMN updated_at RESTRICT;


