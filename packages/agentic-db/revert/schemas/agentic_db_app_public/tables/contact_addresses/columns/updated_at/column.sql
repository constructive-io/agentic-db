-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".contact_addresses 
  DROP COLUMN updated_at RESTRICT;


