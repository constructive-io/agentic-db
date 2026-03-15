-- Revert: schemas/agent_db_memberships_public/tables/org_members/columns/id/column


ALTER TABLE "agent_db_memberships_public".org_members 
  DROP COLUMN id RESTRICT;


