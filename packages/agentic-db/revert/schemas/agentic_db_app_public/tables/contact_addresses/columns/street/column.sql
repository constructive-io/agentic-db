-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/street/column


ALTER TABLE "agentic_db_app_public".contact_addresses 
  DROP COLUMN street RESTRICT;


