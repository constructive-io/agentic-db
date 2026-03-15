-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/sender_id/alterations/alt0000000755
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/sender_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ALTER COLUMN sender_id SET NOT NULL;

