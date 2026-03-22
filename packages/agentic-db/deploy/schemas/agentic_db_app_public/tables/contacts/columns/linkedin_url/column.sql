-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/linkedin_url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/twitter_handle/column


ALTER TABLE "agentic_db_app_public".contacts 
  ADD COLUMN linkedin_url text;

