-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/indexes/app_auth_settings_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/updated_at/column


CREATE INDEX app_auth_settings_updated_at_idx ON agentic_db_auth_private.app_auth_settings ( updated_at );

