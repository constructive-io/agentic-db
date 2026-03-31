-- Deploy: schemas/agentic_db_memberships_public/tables/app_membership_defaults/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/table


GRANT DELETE ON agentic_db_memberships_public.app_membership_defaults TO authenticated;

