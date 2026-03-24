-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/constraints/app_auth_settings_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table


ALTER TABLE "agentic_db_auth_private".app_auth_settings 
  ADD CONSTRAINT app_auth_settings_pkey PRIMARY KEY (id);

