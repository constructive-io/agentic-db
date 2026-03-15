-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/columns/invite_valid/alterations/alt0000000801
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/columns/invite_valid/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_invites 
    ALTER COLUMN invite_valid SET DEFAULT TRUE;

