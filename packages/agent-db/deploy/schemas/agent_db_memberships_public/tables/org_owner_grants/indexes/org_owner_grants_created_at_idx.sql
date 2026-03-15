-- Deploy: schemas/agent_db_memberships_public/tables/org_owner_grants/indexes/org_owner_grants_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/created_at/column


CREATE INDEX org_owner_grants_created_at_idx ON agent_db_memberships_public.org_owner_grants ( created_at );

