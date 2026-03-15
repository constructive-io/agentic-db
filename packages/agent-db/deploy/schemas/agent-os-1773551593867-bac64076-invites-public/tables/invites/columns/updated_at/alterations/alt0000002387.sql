-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/updated_at/alterations/alt0000002387
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ALTER COLUMN updated_at SET DEFAULT now();

