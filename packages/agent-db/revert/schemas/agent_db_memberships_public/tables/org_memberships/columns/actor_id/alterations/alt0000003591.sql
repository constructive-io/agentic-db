-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/actor_id/alterations/alt0000003591


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN actor_id DROP NOT NULL;


