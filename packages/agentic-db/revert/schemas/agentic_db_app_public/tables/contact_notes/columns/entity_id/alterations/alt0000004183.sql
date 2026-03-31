-- Revert: schemas/agentic_db_app_public/tables/contact_notes/columns/entity_id/alterations/alt0000004183


ALTER TABLE agentic_db_app_public.contact_notes 
  ALTER COLUMN entity_id DROP NOT NULL;


