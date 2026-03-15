-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/multiple/alterations/alt0000003942
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/columns/multiple/column


COMMENT ON COLUMN "agent_db_invites_public".invites.multiple IS 'Whether this invite can be claimed by multiple recipients';

