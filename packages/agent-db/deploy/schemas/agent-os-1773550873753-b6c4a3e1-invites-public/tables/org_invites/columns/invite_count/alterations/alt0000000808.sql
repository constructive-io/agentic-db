-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/columns/invite_count/alterations/alt0000000808
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/columns/invite_count/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-invites-public".org_invites.invite_count IS 'Running count of how many times this invite has been claimed';

