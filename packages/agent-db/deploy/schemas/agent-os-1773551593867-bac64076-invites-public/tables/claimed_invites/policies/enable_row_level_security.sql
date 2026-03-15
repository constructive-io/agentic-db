-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/table


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".claimed_invites 
  ENABLE ROW LEVEL SECURITY;

