-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/invite_limit/alterations/alt0000001611
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/invite_limit/column


COMMENT ON COLUMN "agentic_db_invites_public".invites.invite_limit IS E'Maximum number of times this invite can be claimed; -1 means unlimited';

