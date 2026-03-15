-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/bio/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/headline/column


ALTER TABLE agent_db_app_public.contacts 
  ADD COLUMN bio text;

