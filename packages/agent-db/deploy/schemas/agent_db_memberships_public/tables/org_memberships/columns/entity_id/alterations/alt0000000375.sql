-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/entity_id/alterations/alt0000000375
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/entity_id/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  ALTER COLUMN entity_id SET NOT NULL;

