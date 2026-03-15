-- Deploy: schemas/agent_db_app_public/tables/documents/columns/active_count/alterations/alt0000001420
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/overview/column
-- requires: schemas/agent_db_app_public/tables/documents/columns/active_count/column



ALTER TABLE agent_db_app_public.documents 
    ALTER COLUMN active_count SET DEFAULT 0;

