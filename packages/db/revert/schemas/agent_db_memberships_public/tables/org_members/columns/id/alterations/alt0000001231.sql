-- Revert: schemas/agent_db_memberships_public/tables/org_members/columns/id/alterations/alt0000001231


ALTER TABLE "agent_db_memberships_public".org_members 
  ALTER COLUMN id DROP NOT NULL;


