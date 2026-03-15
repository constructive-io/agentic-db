-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/constraints/reminders_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  ADD CONSTRAINT reminders_pkey PRIMARY KEY (id);

