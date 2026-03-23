-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/bio/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN bio RESTRICT;


