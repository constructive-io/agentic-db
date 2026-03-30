-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/entity_id/alterations/alt0000001946


ALTER TABLE "agentic_db_app_public".raw_contact_phones 
  ALTER COLUMN entity_id DROP NOT NULL;


