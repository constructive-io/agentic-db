-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/created_at/alterations/alt0000003485


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN created_at DROP DEFAULT;


