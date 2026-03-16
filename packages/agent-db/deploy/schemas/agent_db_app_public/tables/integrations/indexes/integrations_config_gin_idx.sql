-- Deploy: schemas/agent_db_app_public/tables/integrations/indexes/integrations_config_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/config/column
-- requires: schemas/agent_db_app_public/tables/user_settings/indexes/user_settings_value_gin_idx


CREATE INDEX integrations_config_gin_idx ON "agent_db_app_public".integrations USING GIN ( config );

