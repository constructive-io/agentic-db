-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_approved/alterations/alt0000003568




ALTER TABLE "agent_db_memberships_public".org_memberships 
    ALTER COLUMN is_approved DROP DEFAULT;



