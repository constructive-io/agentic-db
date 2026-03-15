-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  DISABLE ROW LEVEL SECURITY;


