-- Deploy: schemas/agent_db_app_public/tables/documents/columns/title/alterations/alt0000001187
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/title/column
-- requires: schemas/agent_db_app_public/tables/documents/columns/updated_at/alterations/alt0000001186


ALTER TABLE agent_db_app_public.documents 
  ALTER COLUMN title SET NOT NULL;

