-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_banned/alterations/alt0000003570


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN is_banned DROP NOT NULL;


