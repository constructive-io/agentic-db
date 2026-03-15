-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_owner/alterations/alt0000003579


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN is_owner DROP NOT NULL;


