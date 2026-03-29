-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/remember_me_duration/alterations/alt0000003191
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/remember_me_duration/column


COMMENT ON COLUMN agentic_db_auth_private.app_auth_settings.remember_me_duration IS 'Extended session duration when the user selects remember me during login';

