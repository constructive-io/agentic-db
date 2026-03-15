-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/permissions/alterations/alt0000003537


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN permissions DROP NOT NULL;


