-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/created_at/alterations/alt0000002425
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ALTER COLUMN created_at SET DEFAULT now();

