-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_limit/alterations/alt0000002375
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_limit/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-invites-public".invites.invite_limit IS E'Maximum number of times this invite can be claimed; -1 means unlimited';

