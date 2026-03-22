-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_admin/alterations/alt0000001210


ALTER TABLE "agentic_db_memberships_public".org_memberships 
  ALTER COLUMN is_admin DROP NOT NULL;


