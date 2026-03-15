-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".invites 
  ADD COLUMN updated_at timestamptz;

