-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/how_we_met/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN how_we_met RESTRICT;


