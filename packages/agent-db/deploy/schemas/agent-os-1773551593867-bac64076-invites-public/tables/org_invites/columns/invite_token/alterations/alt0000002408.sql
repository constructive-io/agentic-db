-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/invite_token/alterations/alt0000002408
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/invite_token/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-invites-public".org_invites.invite_token IS 'Unique random hex token used to redeem this invitation';

