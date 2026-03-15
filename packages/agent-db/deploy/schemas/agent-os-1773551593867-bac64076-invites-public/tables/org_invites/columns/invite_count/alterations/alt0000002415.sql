-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/invite_count/alterations/alt0000002415
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/invite_count/column


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ALTER COLUMN invite_count SET NOT NULL;

