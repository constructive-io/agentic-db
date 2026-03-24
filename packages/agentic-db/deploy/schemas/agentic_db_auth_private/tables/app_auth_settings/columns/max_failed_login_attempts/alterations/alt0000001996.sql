-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/alterations/alt0000001996
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/column


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  ALTER COLUMN max_failed_login_attempts SET NOT NULL;

