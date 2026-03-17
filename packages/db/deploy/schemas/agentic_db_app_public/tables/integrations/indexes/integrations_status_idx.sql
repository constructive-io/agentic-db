-- Deploy: schemas/agentic_db_app_public/tables/integrations/indexes/integrations_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/integrations/indexes/integrations_provider_idx


CREATE INDEX integrations_status_idx ON "agentic_db_app_public".integrations USING BTREE ( status );

