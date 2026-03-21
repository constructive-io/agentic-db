-- Deploy: schemas/agentic_db_app_public/tables/user_settings/columns/updated_at/alterations/alt0000002527
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/user_settings/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".user_settings 
  ALTER COLUMN updated_at SET NOT NULL;

