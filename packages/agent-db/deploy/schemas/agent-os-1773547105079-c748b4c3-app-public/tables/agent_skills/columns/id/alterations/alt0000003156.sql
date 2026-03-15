-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/columns/id/alterations/alt0000003156
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_skills 
  ALTER COLUMN id SET NOT NULL;

