-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/data/alterations/alt0000000823
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/data/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-invites-public".org_claimed_invites.data IS 'Optional JSON payload captured at the time the invite was claimed';

