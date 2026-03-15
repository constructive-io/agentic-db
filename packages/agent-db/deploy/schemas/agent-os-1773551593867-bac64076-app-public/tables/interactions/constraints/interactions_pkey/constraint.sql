-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/constraints/interactions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ADD CONSTRAINT interactions_pkey PRIMARY KEY (id);

