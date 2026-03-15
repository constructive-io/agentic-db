-- Deploy: schemas/agent_db_app_public/tables/documents/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/embedding/column


ALTER TABLE agent_db_app_public.documents 
  ADD COLUMN entity_id uuid;

