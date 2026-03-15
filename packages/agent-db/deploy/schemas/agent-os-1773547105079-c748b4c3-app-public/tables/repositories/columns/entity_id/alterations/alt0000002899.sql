-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/columns/entity_id/alterations/alt0000002899
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".repositories 
  ALTER COLUMN entity_id SET NOT NULL;

