-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/table


ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
  ADD COLUMN delete_member_cascade_groups boolean;

