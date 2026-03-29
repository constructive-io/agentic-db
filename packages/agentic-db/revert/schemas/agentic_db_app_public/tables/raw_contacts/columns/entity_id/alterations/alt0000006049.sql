-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/entity_id/alterations/alt0000006049


ALTER TABLE agentic_db_app_public.raw_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


