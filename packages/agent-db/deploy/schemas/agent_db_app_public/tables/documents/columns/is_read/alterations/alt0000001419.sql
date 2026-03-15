-- Deploy: schemas/agent_db_app_public/tables/documents/columns/is_read/alterations/alt0000001419
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/is_read/column
-- requires: schemas/agent_db_app_public/tables/documents/columns/source_type/column



ALTER TABLE agent_db_app_public.documents 
    ALTER COLUMN is_read SET DEFAULT false;

