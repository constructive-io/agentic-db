-- Deploy: schemas/agent_db_app_public/tables/activity_log/columns/target_id/alterations/alt0000004471
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/target_id/column
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/target_type/alterations/alt0000004470


ALTER TABLE "agent_db_app_public".activity_log 
  ALTER COLUMN target_id SET NOT NULL;

