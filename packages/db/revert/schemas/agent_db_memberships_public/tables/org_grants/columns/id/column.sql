-- Revert: schemas/agent_db_memberships_public/tables/org_grants/columns/id/column


ALTER TABLE "agent_db_memberships_public".org_grants 
  DROP COLUMN id RESTRICT;


