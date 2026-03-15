-- Deploy: schemas/agent_db_status_public/tables/app_achievements/columns/actor_id/alterations/alt0000003349
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table
-- requires: schemas/agent_db_status_public/tables/app_achievements/columns/actor_id/column


ALTER TABLE "agent_db_status_public".app_achievements 
  ALTER COLUMN actor_id SET NOT NULL;

