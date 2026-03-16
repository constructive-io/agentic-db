-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/indexes/org_admin_grants_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/updated_at/column


CREATE INDEX org_admin_grants_updated_at_idx ON "agent_db_memberships_public".org_admin_grants ( updated_at );

