-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/columns/id/alterations/alt0000000782
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

