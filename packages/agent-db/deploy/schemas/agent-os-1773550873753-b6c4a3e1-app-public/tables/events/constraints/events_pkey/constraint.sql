-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/constraints/events_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".events 
  ADD CONSTRAINT events_pkey PRIMARY KEY (id);

