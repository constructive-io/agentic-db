-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/data/alterations/alt0000003993
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/data/column


COMMENT ON COLUMN "agent_db_invites_public".org_claimed_invites.data IS 'Optional JSON payload captured at the time the invite was claimed';

