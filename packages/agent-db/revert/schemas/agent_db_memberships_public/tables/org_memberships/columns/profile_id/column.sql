-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/profile_id/column


ALTER TABLE "agent_db_memberships_public".org_memberships 
  DROP COLUMN profile_id RESTRICT;


