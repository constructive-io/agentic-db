-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deal_contacts/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deal_contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deal_contacts 
  ADD COLUMN id uuid;

