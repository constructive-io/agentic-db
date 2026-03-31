-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/contact_id/column


ALTER TABLE "agentic_db_app_public".contact_phones 
  DROP COLUMN contact_id RESTRICT;


