-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/policies/enable_row_level_security


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_prompts 
  DISABLE ROW LEVEL SECURITY;


