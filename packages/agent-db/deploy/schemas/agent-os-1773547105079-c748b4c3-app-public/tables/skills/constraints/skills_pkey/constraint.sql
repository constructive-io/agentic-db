-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/constraints/skills_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skills 
  ADD CONSTRAINT skills_pkey PRIMARY KEY (id);

