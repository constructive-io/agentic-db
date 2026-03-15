-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_event_contacts/columns/contact_id/alterations/alt0000003143
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_event_contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_event_contacts/columns/contact_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goal_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_event_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

