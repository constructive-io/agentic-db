-- Revert: schemas/agentic_db_app_public/tables/contact_notes/columns/contact_id/alterations/alt0000011474


ALTER TABLE agentic_db_app_public.contact_notes 
  ALTER COLUMN contact_id DROP NOT NULL;


