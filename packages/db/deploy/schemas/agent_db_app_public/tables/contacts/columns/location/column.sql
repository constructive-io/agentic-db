-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/location/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/bio/column


ALTER TABLE "agent_db_app_public".contacts 
  ADD COLUMN location text;

