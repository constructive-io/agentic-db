-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/actor_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table


ALTER TABLE agent_db_memberships_public.app_grants 
  ADD COLUMN actor_id uuid;

