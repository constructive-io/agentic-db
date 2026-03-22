-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/instagram_handle/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/github_username/column


ALTER TABLE agentic_db_app_public.contacts 
  ADD COLUMN instagram_handle text;

