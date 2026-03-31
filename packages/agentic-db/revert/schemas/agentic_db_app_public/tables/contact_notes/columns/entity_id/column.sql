-- Revert: schemas/agentic_db_app_public/tables/contact_notes/columns/entity_id/column


ALTER TABLE agentic_db_app_public.contact_notes 
  DROP COLUMN entity_id RESTRICT;


