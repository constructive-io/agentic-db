-- Deploy: schemas/agent_db_app_public/tables/user_settings/indexes/user_settings_key_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/key/column
-- requires: schemas/agent_db_app_public/tables/webhooks/indexes/webhooks_event_type_idx


CREATE INDEX user_settings_key_idx ON "agent_db_app_public".user_settings USING BTREE ( key );

