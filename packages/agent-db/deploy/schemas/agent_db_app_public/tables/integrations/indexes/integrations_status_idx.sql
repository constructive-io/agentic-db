-- Deploy: schemas/agent_db_app_public/tables/integrations/indexes/integrations_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/status/column
-- requires: schemas/agent_db_app_public/tables/integrations/indexes/integrations_provider_idx


CREATE INDEX integrations_status_idx ON agent_db_app_public.integrations USING BTREE ( status );

