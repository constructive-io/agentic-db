-- Revert: schemas/agent_db_memberships_public/tables/org_grants/columns/actor_id/alterations/alt0000003596


ALTER TABLE "agent_db_memberships_public".org_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


