-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/updated_at/column


ALTER TABLE "agent_db_memberships_public".org_memberships 
  DROP COLUMN updated_at RESTRICT;


