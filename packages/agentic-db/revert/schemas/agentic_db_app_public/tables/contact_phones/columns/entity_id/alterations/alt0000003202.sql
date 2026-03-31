-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/entity_id/alterations/alt0000003202


ALTER TABLE agentic_db_app_public.contact_phones 
  ALTER COLUMN entity_id DROP NOT NULL;


