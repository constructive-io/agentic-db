-- Deploy: schemas/agent_db_app_public/tables/repositories/columns/url/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/name/alterations/alt0000001343


ALTER TABLE agent_db_app_public.repositories 
  ADD COLUMN url text;

