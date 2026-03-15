-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/indexes/app_auth_settings_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/created_at/column


CREATE INDEX app_auth_settings_created_at_idx ON "agent_db_auth_private".app_auth_settings ( created_at );

