-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/multiple/alterations/alt0000005445
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/multiple/column


COMMENT ON COLUMN agentic_db_invites_public.invites.multiple IS 'Whether this invite can be claimed by multiple recipients';

