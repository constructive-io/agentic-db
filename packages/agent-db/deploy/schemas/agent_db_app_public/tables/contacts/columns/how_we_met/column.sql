-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/how_we_met/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/relationship_type/column


ALTER TABLE agent_db_app_public.contacts 
  ADD COLUMN how_we_met text;

