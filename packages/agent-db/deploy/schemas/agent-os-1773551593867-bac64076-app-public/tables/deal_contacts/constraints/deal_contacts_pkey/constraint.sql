-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/constraints/deal_contacts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deal_contacts 
  ADD CONSTRAINT deal_contacts_pkey PRIMARY KEY (id);

