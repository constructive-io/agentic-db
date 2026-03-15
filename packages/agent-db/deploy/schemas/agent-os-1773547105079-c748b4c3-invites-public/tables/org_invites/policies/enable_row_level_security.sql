-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".org_invites 
  ENABLE ROW LEVEL SECURITY;

