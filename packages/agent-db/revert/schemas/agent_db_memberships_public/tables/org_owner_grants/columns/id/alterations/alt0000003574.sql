-- Revert: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/id/alterations/alt0000003574


ALTER TABLE "agent_db_memberships_public".org_owner_grants 
  ALTER COLUMN id DROP NOT NULL;


