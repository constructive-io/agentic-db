-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.contacts_chunks 
  DROP COLUMN entity_id RESTRICT;


