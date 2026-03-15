-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/invite_token/alterations/alt0000002321
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/columns/invite_token/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-invites-public".invites.invite_token IS 'Unique random hex token used to redeem this invitation';

