-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table


ALTER TABLE agent_db_memberships_public.org_grants 
  ADD COLUMN entity_id uuid;

