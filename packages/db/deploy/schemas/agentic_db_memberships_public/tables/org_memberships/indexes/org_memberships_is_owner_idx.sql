-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/indexes/org_memberships_is_owner_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_owner/column


CREATE INDEX org_memberships_is_owner_idx ON "agentic_db_memberships_public".org_memberships USING BTREE ( is_owner );

