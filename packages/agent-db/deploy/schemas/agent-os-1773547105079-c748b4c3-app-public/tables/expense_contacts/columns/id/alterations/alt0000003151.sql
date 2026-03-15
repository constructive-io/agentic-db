-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/columns/id/alterations/alt0000003151
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expense_contacts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

