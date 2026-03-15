-- Deploy: schemas/agent_db_app_public/tables/documents/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/updated_at/alterations/alt0000001186


ALTER TABLE agent_db_app_public.documents 
  ADD COLUMN title text;

