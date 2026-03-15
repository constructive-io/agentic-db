-- Revert: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/alterations/alt0000003504


ALTER TABLE "agent_db_memberships_private".org_memberships_sprt 
  ALTER COLUMN actor_id DROP NOT NULL;


