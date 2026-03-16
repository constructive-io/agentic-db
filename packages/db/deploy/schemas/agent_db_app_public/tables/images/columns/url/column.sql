-- Deploy: schemas/agent_db_app_public/tables/images/columns/url/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/columns/updated_at/alterations/alt0000001708


ALTER TABLE "agent_db_app_public".images 
  ADD COLUMN url text;

