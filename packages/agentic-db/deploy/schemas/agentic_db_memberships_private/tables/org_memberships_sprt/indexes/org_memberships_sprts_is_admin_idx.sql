-- Deploy: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/indexes/org_memberships_sprts_is_admin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/is_admin/column


CREATE INDEX org_memberships_sprts_is_admin_idx ON agentic_db_memberships_private.org_memberships_sprt USING BTREE ( is_admin );

