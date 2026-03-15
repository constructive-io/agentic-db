-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/updated_at/alterations/alt0000003534


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN updated_at DROP DEFAULT;


