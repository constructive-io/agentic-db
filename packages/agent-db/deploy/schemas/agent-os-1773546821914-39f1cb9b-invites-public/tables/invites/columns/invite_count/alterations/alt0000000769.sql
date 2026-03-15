-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_count/alterations/alt0000000769
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_count/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-invites-public".invites.invite_count IS 'Running count of how many times this invite has been claimed';

