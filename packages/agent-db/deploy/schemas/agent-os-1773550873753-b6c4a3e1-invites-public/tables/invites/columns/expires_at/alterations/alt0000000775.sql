-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/expires_at/alterations/alt0000000775
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/expires_at/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
    ALTER COLUMN expires_at SET DEFAULT NOW() + interval '6 months';

