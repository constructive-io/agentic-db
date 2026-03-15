-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/created_at/alterations/alt0000002395
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".claimed_invites 
  ALTER COLUMN created_at SET DEFAULT now();

