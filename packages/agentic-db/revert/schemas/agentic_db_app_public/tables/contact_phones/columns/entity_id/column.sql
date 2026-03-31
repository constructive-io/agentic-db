-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/entity_id/column


ALTER TABLE agentic_db_app_public.contact_phones 
  DROP COLUMN entity_id RESTRICT;


