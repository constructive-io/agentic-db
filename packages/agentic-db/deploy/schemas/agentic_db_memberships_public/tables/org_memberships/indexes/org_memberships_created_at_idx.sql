-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/indexes/org_memberships_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/created_at/column


CREATE INDEX org_memberships_created_at_idx ON agentic_db_memberships_public.org_memberships ( created_at );

