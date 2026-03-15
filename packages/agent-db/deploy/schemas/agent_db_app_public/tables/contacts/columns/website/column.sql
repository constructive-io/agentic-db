-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/website/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/instagram_handle/column


ALTER TABLE agent_db_app_public.contacts 
  ADD COLUMN website text;

