-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/alterations/alt0000000334
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/column


ALTER TABLE agent_db_memberships_private.org_memberships_sprt 
  ALTER COLUMN actor_id SET NOT NULL;

