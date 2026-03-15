-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/alterations/alt0000002397
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  DISABLE ROW LEVEL SECURITY;

