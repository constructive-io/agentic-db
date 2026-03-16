-- Deploy: schemas/agentic_db_app_public/tables/user_settings/constraints/user_settings_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000001408


ALTER TABLE "agentic_db_app_public".user_settings 
  ADD CONSTRAINT user_settings_pkey PRIMARY KEY (id);

