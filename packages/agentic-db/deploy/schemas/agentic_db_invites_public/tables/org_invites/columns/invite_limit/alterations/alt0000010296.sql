-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_limit/alterations/alt0000010296
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_limit/column


COMMENT ON COLUMN agentic_db_invites_public.org_invites.invite_limit IS E'Maximum number of times this invite can be claimed; -1 means unlimited';

