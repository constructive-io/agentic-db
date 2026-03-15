-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_images/constraints/company_images_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_images 
  ADD CONSTRAINT company_images_pkey PRIMARY KEY (id);

