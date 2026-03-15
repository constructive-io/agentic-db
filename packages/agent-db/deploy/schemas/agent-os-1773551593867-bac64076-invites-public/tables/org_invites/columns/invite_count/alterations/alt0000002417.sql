-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/invite_count/alterations/alt0000002417
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/invite_count/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-invites-public".org_invites.invite_count IS 'Running count of how many times this invite has been claimed';

