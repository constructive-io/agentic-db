-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_count/alterations/alt0000002377
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/invite_count/column



ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
    ALTER COLUMN invite_count SET DEFAULT 0;

