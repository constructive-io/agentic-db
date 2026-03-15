-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/actor_id/alterations/alt0000000166
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/actor_id/column


ALTER TABLE agent_db_status_public.app_steps 
  ALTER COLUMN actor_id SET NOT NULL;

