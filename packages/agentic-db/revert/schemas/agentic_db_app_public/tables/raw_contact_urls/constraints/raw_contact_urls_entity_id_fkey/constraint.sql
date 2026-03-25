-- Revert: schemas/agentic_db_app_public/tables/raw_contact_urls/constraints/raw_contact_urls_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".raw_contact_urls 
  DROP CONSTRAINT raw_contact_urls_entity_id_fkey;


