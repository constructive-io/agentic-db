-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".raw_contacts 
  DROP COLUMN entity_id RESTRICT;


