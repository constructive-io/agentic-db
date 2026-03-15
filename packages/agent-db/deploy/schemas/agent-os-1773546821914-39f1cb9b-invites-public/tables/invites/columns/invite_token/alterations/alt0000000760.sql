-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_token/alterations/alt0000000760
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_token/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-invites-public".invites.invite_token IS 'Unique random hex token used to redeem this invitation';

