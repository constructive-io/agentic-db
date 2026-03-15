-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/constraints/sessions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);

