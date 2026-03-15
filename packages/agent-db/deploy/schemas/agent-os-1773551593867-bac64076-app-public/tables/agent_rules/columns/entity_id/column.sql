-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_rules/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_rules/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_skills/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_rules 
  ADD COLUMN entity_id uuid;

