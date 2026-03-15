-- Deploy: schemas/agent_db_app_public/tables/documents/columns/url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/title/alterations/alt0000004636


ALTER TABLE "agent_db_app_public".documents 
  ADD COLUMN url text;

