-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/constraints/templates_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".templates 
  ADD CONSTRAINT templates_pkey PRIMARY KEY (id);

