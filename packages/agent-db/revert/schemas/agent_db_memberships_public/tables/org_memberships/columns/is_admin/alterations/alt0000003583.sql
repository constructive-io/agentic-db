-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_admin/alterations/alt0000003583




ALTER TABLE "agent_db_memberships_public".org_memberships 
    ALTER COLUMN is_admin DROP DEFAULT;



