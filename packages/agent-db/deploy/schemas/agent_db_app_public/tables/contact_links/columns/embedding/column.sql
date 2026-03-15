-- Deploy: schemas/agent_db_app_public/tables/contact_links/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/contact_links/columns/url/alterations/alt0000000922


ALTER TABLE agent_db_app_public.contact_links 
  ADD COLUMN embedding vector(768);

