-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/entity_id/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN entity_id RESTRICT;


