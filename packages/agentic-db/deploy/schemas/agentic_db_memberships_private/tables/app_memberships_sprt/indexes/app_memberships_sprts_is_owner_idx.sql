-- Deploy: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/indexes/app_memberships_sprts_is_owner_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/table
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/is_owner/column


CREATE INDEX app_memberships_sprts_is_owner_idx ON agentic_db_memberships_private.app_memberships_sprt USING BTREE ( is_owner );

