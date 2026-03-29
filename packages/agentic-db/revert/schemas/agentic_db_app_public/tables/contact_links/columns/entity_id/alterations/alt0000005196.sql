-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/entity_id/alterations/alt0000005196


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN entity_id DROP NOT NULL;


