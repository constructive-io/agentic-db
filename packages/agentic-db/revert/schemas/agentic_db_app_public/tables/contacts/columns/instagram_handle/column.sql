-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/instagram_handle/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN instagram_handle RESTRICT;


