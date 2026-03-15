-- Deploy: schemas/agent_db_app_public/tables/company_links/columns/url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_links/table
-- requires: schemas/agent_db_app_public/tables/company_links/columns/title/column


ALTER TABLE agent_db_app_public.company_links 
  ADD COLUMN url text;

