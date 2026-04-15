-- Revert: schemas/agentic_db_app_public/tables/contact_relationships/columns/contact_id/alterations/alt0000013162


ALTER TABLE agentic_db_app_public.contact_relationships 
  ALTER COLUMN contact_id DROP NOT NULL;


