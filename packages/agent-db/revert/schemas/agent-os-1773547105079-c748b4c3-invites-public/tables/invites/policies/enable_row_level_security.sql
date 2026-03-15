-- Revert: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-invites-public".invites 
  DISABLE ROW LEVEL SECURITY;


