-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/entity_id/alterations/alt0000002185


ALTER TABLE agentic_db_app_public.contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


