-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/phone/column


ALTER TABLE "agentic_db_app_public".contact_phones 
  DROP COLUMN phone RESTRICT;


