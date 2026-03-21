-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/updated_at/alterations/alt0000002350
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ALTER COLUMN updated_at SET NOT NULL;

