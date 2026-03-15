-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_count/alterations/alt0000000768
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_count/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
    ALTER COLUMN invite_count SET DEFAULT 0;

