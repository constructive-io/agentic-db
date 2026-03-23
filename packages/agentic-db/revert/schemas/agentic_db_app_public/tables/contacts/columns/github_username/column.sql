-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/github_username/column


ALTER TABLE agentic_db_app_public.contacts 
  DROP COLUMN github_username RESTRICT;


