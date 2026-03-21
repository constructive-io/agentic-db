-- Deploy: schemas/agentic_db_app_public/tables/user_settings/indexes/user_settings_key_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/key/column
-- requires: schemas/agentic_db_app_public/tables/webhooks/indexes/webhooks_event_type_idx


CREATE INDEX user_settings_key_idx ON "agentic_db_app_public".user_settings USING BTREE ( key );

