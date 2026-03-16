-- Revert: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/created_at/alterations/alt0000001266


ALTER TABLE "agent_db_memberships_public".org_owner_grants 
  ALTER COLUMN created_at DROP DEFAULT;


