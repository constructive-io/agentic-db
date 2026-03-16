-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/instagram_handle/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/github_username/column


ALTER TABLE "agent_db_app_public".contacts 
  ADD COLUMN instagram_handle text;

