-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/constraints/contacts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);

