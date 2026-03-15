-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/updated_at/alterations/alt0000002426
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ALTER COLUMN updated_at SET DEFAULT now();

