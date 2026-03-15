-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/id/alterations/alt0000000753
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

