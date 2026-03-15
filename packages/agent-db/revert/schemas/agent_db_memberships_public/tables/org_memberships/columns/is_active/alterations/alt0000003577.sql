-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_active/alterations/alt0000003577




ALTER TABLE "agent_db_memberships_public".org_memberships 
    ALTER COLUMN is_active DROP DEFAULT;



