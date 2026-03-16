-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/entity_id/alterations/alt0000001238
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/entity_id/column


ALTER TABLE "agent_db_memberships_public".org_members 
  ALTER COLUMN entity_id SET NOT NULL;

