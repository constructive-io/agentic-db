-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/policies/enable_row_level_security


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".recipes 
  DISABLE ROW LEVEL SECURITY;


