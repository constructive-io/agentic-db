-- Deploy: schemas/agent_db_app_public/tables/documents/columns/id/alterations/alt0000001411
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/id/column
-- requires: schemas/agent_db_app_public/tables/expenses/columns/tags/column


ALTER TABLE agent_db_app_public.documents 
  ALTER COLUMN id SET NOT NULL;

