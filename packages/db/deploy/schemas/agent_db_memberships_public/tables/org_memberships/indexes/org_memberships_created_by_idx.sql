-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/indexes/org_memberships_created_by_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/created_by/column


CREATE INDEX org_memberships_created_by_idx ON "agent_db_memberships_public".org_memberships ( created_by );

