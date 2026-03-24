-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/id/alterations/alt0000001644
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/id/column



ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
    ALTER COLUMN id SET DEFAULT uuidv7();

