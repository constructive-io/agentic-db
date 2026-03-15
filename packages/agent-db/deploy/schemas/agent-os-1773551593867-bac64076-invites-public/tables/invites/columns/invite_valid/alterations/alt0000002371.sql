-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_valid/alterations/alt0000002371
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_valid/column



ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
    ALTER COLUMN invite_valid SET DEFAULT TRUE;

