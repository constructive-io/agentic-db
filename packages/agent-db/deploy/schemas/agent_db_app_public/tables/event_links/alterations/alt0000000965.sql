-- Deploy: schemas/agent_db_app_public/tables/event_links/alterations/alt0000000965
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_links/table
-- requires: schemas/agent_db_app_public/tables/company_links/columns/embedding/column


ALTER TABLE agent_db_app_public.event_links 
  DISABLE ROW LEVEL SECURITY;

