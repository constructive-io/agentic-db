-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/columns/entity_id/alterations/alt0000001280
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_grants/columns/entity_id/column


ALTER TABLE "agent_db_memberships_public".org_grants 
  ALTER COLUMN entity_id SET NOT NULL;

