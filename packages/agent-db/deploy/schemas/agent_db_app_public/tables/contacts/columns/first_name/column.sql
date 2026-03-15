-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/first_name/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/updated_at/alterations/alt0000000865


ALTER TABLE agent_db_app_public.contacts 
  ADD COLUMN first_name text;

