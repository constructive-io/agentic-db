-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table


ALTER TABLE "agentic_db_auth_private".app_auth_settings 
  ENABLE ROW LEVEL SECURITY;

