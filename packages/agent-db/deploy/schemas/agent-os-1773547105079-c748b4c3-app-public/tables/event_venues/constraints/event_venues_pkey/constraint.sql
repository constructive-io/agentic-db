-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_venues/constraints/event_venues_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_venues/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_venues 
  ADD CONSTRAINT event_venues_pkey PRIMARY KEY (id);

