-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/indexes/org_grants_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_grants/columns/updated_at/column


CREATE INDEX org_grants_updated_at_idx ON agent_db_memberships_public.org_grants ( updated_at );

