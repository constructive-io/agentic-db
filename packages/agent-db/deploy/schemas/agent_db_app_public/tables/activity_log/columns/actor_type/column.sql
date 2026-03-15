-- Deploy: schemas/agent_db_app_public/tables/activity_log/columns/actor_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/updated_at/alterations/alt0000004515


ALTER TABLE "agent_db_app_public".activity_log 
  ADD COLUMN actor_type text;

