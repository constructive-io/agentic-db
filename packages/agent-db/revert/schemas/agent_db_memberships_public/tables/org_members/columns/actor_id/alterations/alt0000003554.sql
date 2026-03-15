-- Revert: schemas/agent_db_memberships_public/tables/org_members/columns/actor_id/alterations/alt0000003554


ALTER TABLE "agent_db_memberships_public".org_members 
  ALTER COLUMN actor_id DROP NOT NULL;


