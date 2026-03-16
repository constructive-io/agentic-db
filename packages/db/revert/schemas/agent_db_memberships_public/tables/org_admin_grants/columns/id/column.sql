-- Revert: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/id/column


ALTER TABLE "agent_db_memberships_public".org_admin_grants 
  DROP COLUMN id RESTRICT;


