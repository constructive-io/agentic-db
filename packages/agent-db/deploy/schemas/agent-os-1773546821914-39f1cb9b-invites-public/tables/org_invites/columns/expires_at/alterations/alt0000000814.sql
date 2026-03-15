-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/expires_at/alterations/alt0000000814
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/expires_at/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_invites 
    ALTER COLUMN expires_at SET DEFAULT NOW() + interval '6 months';

