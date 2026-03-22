-- Revert: schemas/agentic_db_memberships_public/tables/org_members/columns/is_admin/alterations/alt0000001227


ALTER TABLE "agentic_db_memberships_public".org_members 
  ALTER COLUMN is_admin DROP NOT NULL;


