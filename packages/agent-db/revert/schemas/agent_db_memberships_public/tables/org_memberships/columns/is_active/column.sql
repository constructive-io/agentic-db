-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_active/column


ALTER TABLE "agent_db_memberships_public".org_memberships 
  DROP COLUMN is_active RESTRICT;


