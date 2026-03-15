-- Deploy: schemas/agent_db_limits_public/tables/app_limits/columns/actor_id/alterations/alt0000000050
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/table
-- requires: schemas/agent_db_limits_public/tables/app_limits/columns/actor_id/column


ALTER TABLE agent_db_limits_public.app_limits 
  ALTER COLUMN actor_id SET NOT NULL;

