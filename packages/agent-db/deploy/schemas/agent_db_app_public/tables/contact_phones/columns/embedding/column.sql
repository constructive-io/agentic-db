-- Deploy: schemas/agent_db_app_public/tables/contact_phones/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/is_primary/alterations/alt0000001211


ALTER TABLE agent_db_app_public.contact_phones 
  ADD COLUMN embedding vector(768);

