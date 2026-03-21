-- Deploy: schemas/agentic_db_app_public/tables/user_settings/indexes/user_settings_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000004506


CREATE INDEX user_settings_entity_id_idx ON agentic_db_app_public.user_settings USING BTREE ( entity_id );

