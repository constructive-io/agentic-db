-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/indexes/org_membership_defaults_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/updated_at/column


CREATE INDEX org_membership_defaults_updated_at_idx ON agentic_db_memberships_public.org_membership_defaults ( updated_at );

