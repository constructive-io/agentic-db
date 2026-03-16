-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/created_at/column


ALTER TABLE "agent_db_memberships_public".org_memberships 
  DROP COLUMN created_at RESTRICT;


