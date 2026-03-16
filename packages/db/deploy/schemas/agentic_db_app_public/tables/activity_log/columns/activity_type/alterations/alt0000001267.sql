-- Deploy: schemas/agentic_db_app_public/tables/activity_log/columns/activity_type/alterations/alt0000001267
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/activity_type/column
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/updated_at/alterations/alt0000001266


ALTER TABLE "agentic_db_app_public".activity_log 
  ALTER COLUMN activity_type SET NOT NULL;

