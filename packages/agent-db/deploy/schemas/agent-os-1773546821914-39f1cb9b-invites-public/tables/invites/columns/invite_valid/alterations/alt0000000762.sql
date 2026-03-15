-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_valid/alterations/alt0000000762
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/columns/invite_valid/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
    ALTER COLUMN invite_valid SET DEFAULT TRUE;

