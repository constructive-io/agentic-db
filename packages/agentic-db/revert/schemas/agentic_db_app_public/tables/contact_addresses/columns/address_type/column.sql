-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/address_type/column


ALTER TABLE "agentic_db_app_public".contact_addresses 
  DROP COLUMN address_type RESTRICT;


