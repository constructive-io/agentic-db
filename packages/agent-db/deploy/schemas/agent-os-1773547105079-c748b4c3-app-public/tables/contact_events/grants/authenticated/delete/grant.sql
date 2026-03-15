-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_companies/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent-os-1773547105079-c748b4c3-app-public".contact_events TO authenticated;

