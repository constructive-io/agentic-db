-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/columns/id/alterations/alt0000000782
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".claimed_invites 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

