-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000001442
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/secret/column
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/is_active/column



ALTER TABLE agent_db_app_public.webhooks 
    ALTER COLUMN is_active SET DEFAULT true;

