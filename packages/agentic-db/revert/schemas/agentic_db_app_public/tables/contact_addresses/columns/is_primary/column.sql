-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/is_primary/column


ALTER TABLE "agentic_db_app_public".contact_addresses 
  DROP COLUMN is_primary RESTRICT;


