-- Revert: schemas/agentic_db_app_public/tables/contact_relationships/columns/related_contact_id/alterations/alt0000015416


ALTER TABLE agentic_db_app_public.contact_relationships 
  ALTER COLUMN related_contact_id DROP NOT NULL;


