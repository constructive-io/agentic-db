-- Revert: schemas/agent_db_memberships_public/tables/org_members/columns/is_admin/alterations/alt0000001233


ALTER TABLE "agent_db_memberships_public".org_members 
  ALTER COLUMN is_admin DROP NOT NULL;


