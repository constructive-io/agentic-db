-- Revert: schemas/agentic_db_app_public/tables/contact_phones/columns/updated_at/column


ALTER TABLE agentic_db_app_public.contact_phones 
  DROP COLUMN updated_at RESTRICT;


