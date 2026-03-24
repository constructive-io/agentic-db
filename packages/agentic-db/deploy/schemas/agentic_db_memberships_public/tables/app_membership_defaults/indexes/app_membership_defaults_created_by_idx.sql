-- Deploy: schemas/agentic_db_memberships_public/tables/app_membership_defaults/indexes/app_membership_defaults_created_by_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/created_by/column


CREATE INDEX app_membership_defaults_created_by_idx ON agentic_db_memberships_public.app_membership_defaults ( created_by );

