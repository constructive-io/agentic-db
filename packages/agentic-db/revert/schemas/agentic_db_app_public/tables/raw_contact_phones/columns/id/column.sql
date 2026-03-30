-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/id/column


ALTER TABLE "agentic_db_app_public".raw_contact_phones 
  DROP COLUMN id RESTRICT;


