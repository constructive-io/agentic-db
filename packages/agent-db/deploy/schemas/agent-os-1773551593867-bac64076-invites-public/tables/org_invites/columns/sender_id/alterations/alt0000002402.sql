-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/sender_id/alterations/alt0000002402
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/sender_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ALTER COLUMN sender_id SET NOT NULL;

