-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/actor_id/alterations/alt0000000120
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/actor_id/column


ALTER TABLE agent_db_memberships_public.app_memberships 
  ALTER COLUMN actor_id SET NOT NULL;

