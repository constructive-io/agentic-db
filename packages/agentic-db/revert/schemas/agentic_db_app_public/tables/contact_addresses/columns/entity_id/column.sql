-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".contact_addresses 
  DROP COLUMN entity_id RESTRICT;


