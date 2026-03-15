-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/multiple/alterations/alt0000000810
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/multiple/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_invites 
    ALTER COLUMN multiple SET DEFAULT FALSE;

