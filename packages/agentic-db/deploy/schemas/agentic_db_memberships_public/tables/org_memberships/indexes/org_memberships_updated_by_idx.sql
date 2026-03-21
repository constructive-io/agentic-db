-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/indexes/org_memberships_updated_by_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/updated_by/column


CREATE INDEX org_memberships_updated_by_idx ON agentic_db_memberships_public.org_memberships ( updated_by );

