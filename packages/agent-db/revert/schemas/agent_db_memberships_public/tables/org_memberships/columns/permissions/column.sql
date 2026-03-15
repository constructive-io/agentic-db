-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/permissions/column


ALTER TABLE "agent_db_memberships_public".org_memberships 
  DROP COLUMN permissions RESTRICT;


