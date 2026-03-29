-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/entity_id/alterations/alt0000005240


ALTER TABLE agentic_db_app_public.contacts_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


