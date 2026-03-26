-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/phone/alterations/alt0000001922


ALTER TABLE "agentic_db_app_public".raw_contact_phones 
  ALTER COLUMN phone DROP NOT NULL;


