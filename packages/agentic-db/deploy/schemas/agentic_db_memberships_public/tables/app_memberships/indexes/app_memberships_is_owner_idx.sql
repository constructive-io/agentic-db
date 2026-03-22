-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/indexes/app_memberships_is_owner_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_owner/column


CREATE INDEX app_memberships_is_owner_idx ON "agentic_db_memberships_public".app_memberships USING BTREE ( is_owner );

