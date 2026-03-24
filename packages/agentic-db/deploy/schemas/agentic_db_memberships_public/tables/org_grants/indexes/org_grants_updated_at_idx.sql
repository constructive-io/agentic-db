-- Deploy: schemas/agentic_db_memberships_public/tables/org_grants/indexes/org_grants_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/columns/updated_at/column


CREATE INDEX org_grants_updated_at_idx ON "agentic_db_memberships_public".org_grants ( updated_at );

