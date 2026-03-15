-- Deploy: schemas/agent_db_app_public/tables/documents/columns/entity_id/alterations/alt0000001413
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/documents/columns/entity_id/column


ALTER TABLE agent_db_app_public.documents 
  ALTER COLUMN entity_id SET NOT NULL;

