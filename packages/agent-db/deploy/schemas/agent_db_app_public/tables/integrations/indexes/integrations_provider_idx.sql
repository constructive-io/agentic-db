-- Deploy: schemas/agent_db_app_public/tables/integrations/indexes/integrations_provider_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/provider/column
-- requires: schemas/agent_db_app_public/tables/attachments/indexes/attachments_attachable_id_idx


CREATE INDEX integrations_provider_idx ON "agent_db_app_public".integrations USING BTREE ( provider );

