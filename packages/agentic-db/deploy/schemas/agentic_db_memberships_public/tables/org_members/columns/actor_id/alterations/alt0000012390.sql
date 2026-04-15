-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/columns/actor_id/alterations/alt0000012390
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/columns/actor_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_members.actor_id IS 'References the user who is a member';

