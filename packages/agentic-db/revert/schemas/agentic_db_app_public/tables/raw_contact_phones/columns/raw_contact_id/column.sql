-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/raw_contact_id/column


ALTER TABLE "agentic_db_app_public".raw_contact_phones 
  DROP COLUMN raw_contact_id RESTRICT;


