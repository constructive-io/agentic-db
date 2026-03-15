-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/invite_limit/alterations/alt0000000805
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/invite_limit/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-invites-public".org_invites.invite_limit IS E'Maximum number of times this invite can be claimed; -1 means unlimited';

