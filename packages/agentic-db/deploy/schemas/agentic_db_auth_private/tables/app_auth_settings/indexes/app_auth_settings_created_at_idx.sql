-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/indexes/app_auth_settings_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/created_at/column


CREATE INDEX app_auth_settings_created_at_idx ON agentic_db_auth_private.app_auth_settings ( created_at );

