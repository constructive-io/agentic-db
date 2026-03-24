-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/indexes/app_memberships_is_admin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_admin/column


CREATE INDEX app_memberships_is_admin_idx ON agentic_db_memberships_public.app_memberships USING BTREE ( is_admin );

