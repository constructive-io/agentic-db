-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/entity_id/alterations/alt0000003211


ALTER TABLE agentic_db_app_public.contact_addresses 
  ALTER COLUMN entity_id DROP NOT NULL;


