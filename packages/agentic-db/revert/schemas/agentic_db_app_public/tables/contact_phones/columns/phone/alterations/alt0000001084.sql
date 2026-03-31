-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/phone/alterations/alt0000001084


ALTER TABLE "agentic_db_app_public".contact_phones 
  ALTER COLUMN phone DROP NOT NULL;


