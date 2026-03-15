-- Deploy: schemas/agent_db_app_public/tables/documents/columns/active_count/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/overview/column


ALTER TABLE agent_db_app_public.documents 
  ADD COLUMN active_count int;

