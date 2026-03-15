-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/entity_id/alterations/alt0000000828
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_claimed_invites 
  ALTER COLUMN entity_id SET NOT NULL;

