-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/constraints/habits_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
  ADD CONSTRAINT habits_pkey PRIMARY KEY (id);

