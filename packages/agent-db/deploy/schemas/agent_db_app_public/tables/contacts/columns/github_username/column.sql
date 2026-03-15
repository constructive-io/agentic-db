-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/github_username/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/linkedin_url/column


ALTER TABLE "agent_db_app_public".contacts 
  ADD COLUMN github_username text;

