-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/policies/enable_row_level_security


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".repositories 
  DISABLE ROW LEVEL SECURITY;


