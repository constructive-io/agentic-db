-- Deploy: schemas/agent_db_app_public/tables/company_links/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_links/table
-- requires: schemas/agent_db_app_public/tables/company_links/columns/url/alterations/alt0000000931


ALTER TABLE agent_db_app_public.company_links 
  ADD COLUMN embedding vector(768);

