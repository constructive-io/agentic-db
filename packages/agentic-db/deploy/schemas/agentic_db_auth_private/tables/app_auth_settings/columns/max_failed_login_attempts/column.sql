-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table


ALTER TABLE "agentic_db_auth_private".app_auth_settings 
  ADD COLUMN max_failed_login_attempts int;

